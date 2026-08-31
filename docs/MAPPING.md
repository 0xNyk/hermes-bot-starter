# Primitive mapping: Grok Bot → Hermes Bot Mode

A Bot in both products is a **named teammate with a persistent chat**.
The runtimes are not the same.

| Grok Bot | Hermes Bot Mode | Notes |
|---|---|---|
| Bot | Profile (`~/.hermes/profiles/<name>/`) | Same idea. Hermes has no extra primitive. |
| Description | `SOUL.md` | Durable rules live here, not in the first message. |
| Conversation | Canonical **Bot Chat** | Hermes `/new` in that chat is rerouted to `/compact`. |
| Skill | Skill (`SKILL.md`) | How. Test once before automating. |
| Routine | Cron job `[bot:<name>] …` | When. Same jobs appear in `hermes cron list`. |
| Group chat | Bot Mode group / room | Hermes: 2-6 members, capped rounds; `@user` for you. |
| Bot-to-bot DM | `hermes -p <bot> chat` + protocol prefix | File transport; do not shell-quote the body. |
| Share link | none | Publish a PROFILE.md in git instead. |
| Cloud computer (shared by all Bots) | Local / SSH / Docker / VPS / cloud backend | **Not a security boundary in Grok Bot.** Hermes profiles isolate config/memory; the machine they run on is still shared if you point them at one host. |
| Agent Computer view | Desktop session + optional computer-use / remote backend | Hermes does not give you a Cursor VM. |
| Teach a task (record ≤10 min) | Write a skill after one successful run | No official record-the-browser import. |
| Plugins / Marketplace | MCP servers + skills + Desktop plugins | Reconnect; do not assume names match. |
| Auto-review Always Allow / Require | `approvals.mode` + SOUL stop-before + cron_mode | Require wins on Grok Bot. Keep that spirit. |
| Execution on Local Computer | `terminal.backend` + approvals | Grok Bot default is Ask every time. `always` is the hot path, not the starter. |
| iOS companion | Telegram / Discord gateway, or wait for official mobile | Hermes Bot Mode is a **Desktop plugin**. Enabling it on a Linux gateway does nothing for Telegram. |
| 50 Bots + groups cap | Practical: keep the roster small | Community 20-bot desks exist; they burn quota and blur ownership. |

## Seat check (do not mix these)

| Seat | What it is |
|---|---|
| Grok Bot.app | Closed roster + **cloud computer**. Work continues when the laptop sleeps. |
| Grok Build CLI (`grok`) | Terminal coding agent. Not the Bot product. |
| Hermes Desktop Bot Mode | UI over local (or connected) Hermes profiles. |
| Local Tauri lab client | Experiment. Do not ship it as the product. |
| Linux `hermes gateway` | Messaging + cron. Not Bot Mode. |

If the job needs a persistent cloud VM with cookies that survive laptop sleep,
that is still Grok Bot (or a VPS you attach as a Hermes connection). Hermes
Bot Mode on a laptop is the laptop.

## Recommended conversion ritual

1. For each Grok Bot: copy Name, Title, Description into a PROFILE.md (no secrets).
2. Create a Hermes profile with that name (`Fresh profile`, not a clone of `default` if you want a clean specialist).
3. Paste standing rules into `SOUL.md`.
4. Run **one** real task with a safe scope. Correct the output.
5. Save the method as a skill.
6. Add a routine only after failure cases are defined.
7. Keep send / publish / delete / production behind approval.
8. Leave Grok Bot running until the Hermes routine has produced the same class of result twice.

Do not import reconstructed Grok Bot app source, unofficial Linux ports, or "run any model inside Grok Bot" shims as part of this migration.
