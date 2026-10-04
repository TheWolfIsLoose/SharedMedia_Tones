# SharedMedia: Tones — Roadmap

Forward plan, one section per release. Dev-only (`Dev/` never ships).
Shipped work moves to `Dev/HISTORY.md`; the player-facing summary goes in
`CHANGELOG.md` when a release is cut (see `Dev/RELEASING.md`).

---

## Next session: start here

**v2.7.0 on `dev`, not released.** Rename, grouped `T:` names, Ponytail
pass, pipeline aligned with Stock Clerk / PickupGroup.

Before merging to `main`:
1. In-game: tones grouped at the end of the list, `T:` names readable,
   tones play.
2. GitHub repo renamed to SharedMedia_Tones; About line + website set (player, in repo settings).
3. CurseForge webhook confirmed on the repo (Settings > Webhooks); the old
   `CF_API_TOKEN` secret can be deleted once the first release lands.
4. Player: paste `Dev/CURSEFORGE.md` into the CurseForge description and
   rename the CurseForge project.
