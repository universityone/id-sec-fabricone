#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${AUTHENTIK_LOCAL_DIR:-$HOME/authentik}"
MODE="${1:---dry-run}"

case "$MODE" in
  --dry-run)
    RSYNC_OPTS=(-rcivn --no-owner --no-group --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r)
    ;;
  --apply)
    RSYNC_OPTS=(-rciv --no-owner --no-group --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r)
    ;;
  *)
    echo "Usage: $0 [--dry-run|--apply]" >&2
    exit 2
    ;;
esac

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi

echo "Source: $SOURCE_DIR"
echo "Target: $TARGET_DIR"
echo "Mode:   $MODE"
echo

rsync "${RSYNC_OPTS[@]}" \
  "$SOURCE_DIR/compose.override.yaml" \
  "$SOURCE_DIR/.env.example" \
  "$TARGET_DIR/"

rsync "${RSYNC_OPTS[@]}" --delete \
  "$SOURCE_DIR/blueprints/organization/" \
  "$TARGET_DIR/blueprints/organization/"

rsync "${RSYNC_OPTS[@]}" --delete \
  "$SOURCE_DIR/custom-templates/" \
  "$TARGET_DIR/custom-templates/"

echo
echo "Not touched: compose.yaml, .env, data/, certs/, database volume"
