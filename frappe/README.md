# Frappe / ERPNext

FabricONE integration and configuration layer for Frappe Framework and ERPNext.

## Architectural boundary

Upstream Frappe and ERPNext source code remain in their own upstream Git repositories
and are not copied into this repository unless FabricONE deliberately maintains a fork.

Local development runtime:

    ~/frappe/educateone-bench

FabricONE authoritative source:

    id-sec-fabricone/frappe/

The FabricONE repository contains only reusable FabricONE-created material such as:

- configuration-as-code
- integration definitions
- scripts and deployment helpers
- sanitized example configuration
- tests
- documentation
- reusable templates

## Runtime state

The following remain outside Git:

- Frappe site databases
- site_config.json
- database credentials
- passwords and API keys
- Redis runtime state
- generated assets
- logs
- backups
- sessions
- participant or user PII
- production-specific secrets

Frappe configuration that is naturally database-managed should remain database-managed
unless Frappe provides a supported declarative/export mechanism suitable for source control.
