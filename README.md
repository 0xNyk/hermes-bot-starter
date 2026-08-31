# hermes-bot-starter

Starter templates for **Hermes Agent Bot Mode**. Not a runtime. Not affiliated
with xAI, Cursor, or Nous Research.

A Bot in Hermes is a profile under `~/.hermes/profiles/<name>/`. This repo
gives each specialist a SOUL, AGENTS.md, and one skill. Copy the text. Do not
import Grok Bot credentials, cloud-computer files, or chat history.

Official Hermes: https://hermes-agent.nousresearch.com/docs/user-guide/bot-mode

## Install one specialist

```sh
hermes profile create researcher --no-skills
./install.sh researcher
```

`install.sh` copies SOUL, AGENTS.md, and skills only. It does not copy
credentials.

Keep `default` as the human-facing generalist.

## Roster

| Bot | Owns | Must not |
|---|---|---|
| `default` | Catch-all chat with you | Unattended publish / spend / delete |
| `chief` | Source-linked digest of what needs a decision | Sending mail, moving meetings, assigning bots |
| `researcher` | Cited briefs from primary sources | Publishing, account writes |
| `designer` | Visual direction and reviewable mockups | Shipping UI, merging, replacing live brand |
| `marketer` | Drafts and campaign analysis | Sending, publishing, spending, enrolling |
| `sales` | Account research and outreach drafts | Sending, enrolling, CRM edits |
| `va` | Inbox and calendar prep | Sending, booking, moving meetings |
| `implementer` | Code / specs you already approved | Merging, deploying, reviewing its own PR |
| `reviewer` | Independent PASS / BLOCK / HOLD | Implementing the change it reviews |

Rooms: Desk (`chief`+`va`), Spec (`researcher`+`reviewer`), Go-to-market
(`marketer`+`sales`). Keep implementer and designer 1:1. See
[docs/GROUPS.md](docs/GROUPS.md).

Send, publish, purchase, delete, and production changes stay behind approval.

More: [docs/MAPPING.md](docs/MAPPING.md), [docs/MODELS.md](docs/MODELS.md),
[docs/KNOWLEDGE.md](docs/KNOWLEDGE.md), [docs/CREATE.md](docs/CREATE.md),
[docs/RELATED.md](docs/RELATED.md).

## License

MIT. Profile prose in `templates/` is CC0 unless a file says otherwise.
