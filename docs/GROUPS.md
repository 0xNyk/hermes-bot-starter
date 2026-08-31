# Group chats

Hermes Bot Mode groups are Desktop rooms, not a CLI object. Membership lives
on each Bot as `ui_meta.hermes-bots.groups`. A room message can spend a turn
on every member. Keep rooms at two Bots and @mention the owner.

Official rules: 2-6 Bots, up to three serial rounds, 10 messages per send.
Unmentioned members should pass. Escalate to the human with `@user`.

## Recommended rooms

Two Bots per room. Sequence work with a second @mention, not a third seat.

| Room | Members | Owns | Do not |
|---|---|---|---|
| Desk | `chief`, `va` | What needs a human today | Send, book, assign without approval |
| Spec | `researcher`, `reviewer` | Brief then PASS/BLOCK/HOLD | Implement, merge |
| Go-to-market | `marketer`, `sales` | Drafts and outreach lists | Send, publish, spend |

Keep these 1:1 (not in a room):

- `default`: human-facing generalist
- `implementer`: only after a spec is approved; do not wake a flagship coding model on chatter
- `designer`: mockups on request; do not sit in Go-to-market

## How to speak in a room

1. Name the outcome in one line.
2. `@mention` only the Bot that owns the next step.
3. Stop at a review packet. Do not ask the room to send, merge, or publish.
4. For spec to build: finish Spec, then open implementer 1:1 with the approved
   artifact. Do not add implementer to Spec.

Example:

```
Need a cited brief on Bot Mode groups, then a PASS/HOLD on the sales SOUL.
@researcher then @reviewer. Do not implement. @user if a decision is owed.
```

## Desktop

Right-click a Bot → Manage groups. Toggle the rooms above. Hide unused
profiles (right-click → Hide Bot).

Open a room only with a real task. A blank "hi team" burns credits.

## Credits

Worst case is an unscoped message in a 3-Bot room that includes a flagship
coding model. Two-Bot rooms plus 1:1 implementer is the cheaper shape.
Flash on Desk and Go-to-market. Do not raise reasoning on those seats.
