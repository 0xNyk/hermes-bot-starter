# Create a specialist Bot (Hermes)

1. Confirm the job has: one input, one outcome, one stop-before boundary.
2. `hermes profile create <slug> --no-skills` or Desktop → Bots → New Agent → Fresh profile.
3. Copy the template tree into the profile:

```sh
T=templates/profiles/<slug>
P=~/.hermes/profiles/<slug>
cp "$T/SOUL.md" "$P/SOUL.md"
cp "$T/AGENTS.md" "$P/AGENTS.md"
mkdir -p "$P/skills"
cp -R "$T/skills/." "$P/skills/"
```

4. Enable only the skills and toolsets that job needs.
5. Run one safe task in Bot Chat. Do not create a routine yet.
6. If the method is stable, then add a routine.

Do not clone `default` into a specialist unless you want its memory and tools.
