# hermes-bot-starter

Starter templates for [Hermes Agent](https://github.com/NousResearch/hermes-agent) Bot Mode.

A Bot in Hermes is a profile under `~/.hermes/profiles/<name>/`. This repository
gives each specialist a SOUL, session rules, and one skill. Copy the text. It is
not a runtime and it does not install Hermes.

[![Validate](https://github.com/0xNyk/hermes-bot-starter/actions/workflows/validate.yml/badge.svg)](https://github.com/0xNyk/hermes-bot-starter/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

[nyk.dev/oss](https://www.nyk.dev/oss) · [Bot Mode docs](https://hermes-agent.nousresearch.com/docs/user-guide/bot-mode) · [Hermes Agent](https://github.com/NousResearch/hermes-agent)

Not an official Nous Research, xAI, or Cursor project.

## Sixty-second start

Hermes Agent (tagged release) and Desktop must already be installed. Bot Mode is
on by default in Desktop.

```sh
git clone https://github.com/0xNyk/hermes-bot-starter.git
cd hermes-bot-starter

hermes profile create researcher --no-skills
./install.sh researcher
```

`install.sh` copies `SOUL.md`, `AGENTS.md`, and `skills/` only. It does not copy
credentials. Keep `default` as the human-facing generalist.

Open Desktop → Bots → the new row → Bot Chat. Run one safe task before any
routine.

Use this repo as a GitHub template, or copy one specialist with `./install.sh <slug>`.

## What this is

| This repo | Not this repo |
|---|---|
| Profile prose and one skill per job | Hermes Agent |
| A mapping from Grok Bot *roles* to Hermes profiles | A Grok Bot export |
| Desktop Bot Mode rooms documented as text | Cloud-computer files, cookies, or chat history |

Grok Bot and Hermes do not share a config format. Name, job, and stop-before
move as text. Credentials, the Grok cloud computer, and conversation history
stay behind.

## Roster

One Bot owns one outcome. Add a second Bot only for a stable specialist role.

| Bot | Owns | Must not |
|---|---|---|
| `default` | Catch-all chat with you | Unattended publish, spend, or delete |
| `chief` | Source-linked digest of what needs a decision | Sending mail, moving meetings, assigning bots |
| `researcher` | Cited briefs from primary sources | Publishing, account writes |
| `designer` | Visual direction and reviewable mockups | Shipping UI, merging, replacing live brand |
| `marketer` | Drafts and campaign analysis | Sending, publishing, spending, enrolling |
| `sales` | Account research and outreach drafts | Sending, enrolling, CRM edits |
| `va` | Inbox and calendar prep | Sending, booking, moving meetings |
| `implementer` | Code or specs you already approved | Merging, deploying, reviewing its own PR |
| `reviewer` | Independent PASS / BLOCK / HOLD | Implementing the change it reviews |

The implementer does not review its own work. Designer does not ship the UI it
specified. Marketer and sales do not send the draft. VA does not book.

Each template is `SOUL.md` (identity and stop-before), `AGENTS.md` (session
rules), and one `skills/*/SKILL.md` (how). See [docs/KNOWLEDGE.md](docs/KNOWLEDGE.md).

## Rooms

Two Bots per room. `@mention` the owner. Unmentioned members pass.

| Room | Members | 1:1 instead |
|---|---|---|
| Desk | `chief`, `va` | `default` |
| Spec | `researcher`, `reviewer` | `implementer` after an approved spec |
| Go-to-market | `marketer`, `sales` | `designer` |

Details: [docs/GROUPS.md](docs/GROUPS.md).

## Trust boundary

A listing or a template is not a security endorsement. Separate Bots are not a
security boundary if they share one computer.

- Send, publish, purchase, delete, and production changes stay behind approval.
- Do not paste Auto-review Always Allow strings from another product.
- Do not commit tokens, cookie jars, or hostnames.
- Do not import unofficial Grok Bot app source.

[SECURITY.md](SECURITY.md) is the policy. Cards do not reverse work already done.

## Docs

| Doc | For |
|---|---|
| [docs/CREATE.md](docs/CREATE.md) | New specialist ritual |
| [docs/MAPPING.md](docs/MAPPING.md) | Grok Bot primitive → Hermes primitive |
| [docs/MODELS.md](docs/MODELS.md) | Suggested model pins (not live prices) |
| [docs/GROUPS.md](docs/GROUPS.md) | Rooms and @mention rules |
| [docs/KNOWLEDGE.md](docs/KNOWLEDGE.md) | What each template file is |
| [docs/RELATED.md](docs/RELATED.md) | Sibling projects, not vendored |

## Contributing

[CONTRIBUTING.md](CONTRIBUTING.md). A new profile needs one input, one outcome,
one stop-before, and no secrets.

## License

MIT. Copying a template into your own Hermes profile is the intended use.
