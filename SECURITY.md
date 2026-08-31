# Security

This repo is documentation and SOUL templates. It is not an agent runtime and
it does not install Hermes.

## Do not commit

- API keys, bot tokens, OAuth files, cookie jars
- Auto-review rules that name private hosts or accounts
- Company runtimes, CRM URLs, or calendar internals
- Reconstructed Grok Bot app source

## When you apply a template

A SOUL.md is standing policy, not a credential store. Put secrets in
`$HERMES_HOME/.env` (mode 600) on the machine that runs Hermes.

Keep send, publish, purchase, delete, and production changes behind approval.
Do not treat separate Bots as a security boundary if they share one computer.

## Report

Open a GitHub issue for a problem in this repository. Do not file secrets in
the issue body.
