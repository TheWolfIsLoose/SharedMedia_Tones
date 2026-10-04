# SharedMedia: Tones — Releasing

Dev-only (`Dev/` never ships).

Releases are cut by CI from the `## vX.Y.Z` heading in
[CHANGELOG.md](../CHANGELOG.md), which holds only the release being cut
(short, player-facing bullets). Detailed notes for every version,
including this one, go in [HISTORY.md](HISTORY.md). Planned work lives in [ROADMAP.md](ROADMAP.md).

- Push to `dev` with a new `-alphaN` / `-betaN` version heading to
  publish a prerelease (CurseForge Alpha/Beta).
- Merge to `main` with a new stable `vX.Y.Z` heading to publish a release.

The workflow tags the commit, packages it and creates the GitHub
release, which CurseForge (GitHub webhook) and Wago (its own webhook)
pick up. Don't create releases by hand. Track a branch locally with
`Dev/update.bat` (`update.bat dev` for test builds). Before pushing, run
the smoke test: `lua5.1 Dev/smoke.lua`

Adding sounds: drop `<group>-Name-With-Dashes.ogg` in `sound/`, add
"Name With Dashes" (spaces) to its group in `SharedMedia_Tones.lua`, and
bump the count in `Dev/smoke.lua`.
