# FabricONE Vaultwarden

This directory contains reusable FabricONE-specific configuration and integration
material for Vaultwarden.

Upstream Vaultwarden remains external and is not copied into this repository
unless FabricONE deliberately decides to maintain a fork.

Local development runtime:

    ~/vaultwarden

FabricONE authoritative source:

    id-sec-fabricone/vaultwarden/

Potential FabricONE-owned material includes:

- midPoint integration
- authentik integration
- provisioning adapters
- API/integration helpers
- organization and credential-lifecycle configuration
- deployment/configuration helpers
- sanitized examples
- documentation

Do not commit:

- `.env` files containing secrets
- passwords, API keys, tokens, or private keys
- Vaultwarden databases or `data/`
- attachments
- backups
- logs or runtime state
- user vault contents
- participant or user PII

The runnable local Vaultwarden instance and its persistent application data remain
outside this Git repository.
