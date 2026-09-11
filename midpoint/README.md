# FabricONE midPoint

This directory contains reusable FabricONE-specific configuration and integration material for midPoint.

Examples include:

- resource and connector definitions
- mappings
- roles and entitlement definitions
- scripts
- sanitized example configurations
- documentation

The runnable midPoint environment is kept separately in WSL/Docker.

Do not commit:

- passwords, API keys, tokens, or other secrets
- private keys or keystores
- `.env` files containing secrets
- databases, backups, or runtime state
- participant or user PII

Where configuration requires secrets, keep only secret references or sanitized examples in Git.
