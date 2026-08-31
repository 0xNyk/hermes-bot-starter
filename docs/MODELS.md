# Suggested model pins

Starting pins for a credit-aware roster. They are not live prices. Re-check
if a provider returns 403.

Keep `default` as the human generalist. Do not spend flagship / *-pro models
on VA or cron.

| Profile | Model | Reasoning | Why |
|---|---|---|---|
| `default` | `x-ai/grok-4.6` | medium | Human-facing generalist |
| `chief` | `google/gemini-3.7-flash` | low | Short digests, high volume |
| `va` | `google/gemini-3.7-flash` | low | Inbox packets, high volume |
| `sales` | `google/gemini-3.7-flash` | low | Structured review lists |
| `marketer` | `x-ai/grok-4.6` | low | Draft voice, still no send |
| `designer` | `x-ai/grok-4.6` | low | Direction packets, no assets |
| `researcher` | `x-ai/grok-4.6` | medium | Citations need a stronger pass |
| `implementer` | `openai/gpt-5.6-sol` | medium | Code after an approved spec |
| `reviewer` | `x-ai/grok-4.6` | medium | Different family than implementer |

Example (any provider you already use):

```sh
hermes -p va config set model.default google/gemini-3.7-flash
hermes -p va config set agent.reasoning_effort low
```

Cap `agent.max_turns` on flash seats (chief, va, sales, marketer) so a
runaway room cannot chew the budget. Leave implementer higher.

Do not pin a provider name unless that profile already has credentials.
