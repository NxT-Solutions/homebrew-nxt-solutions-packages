# NxT Solutions Homebrew tap

This repository is the Homebrew tap for [NxT Solutions](https://github.com/NxT-Solutions) packages.

Use it to install the CLI tools and macOS apps we publish. Homebrew clones this repo when you run `brew tap NxT-Solutions/nxt-solutions-packages`.

```bash
brew tap NxT-Solutions/nxt-solutions-packages
```

The old personal tap `NoahNxT/nxt-solutions-packages` redirects here. You do not need to untap it first.

## Packages

| Name | Homebrew type | Platforms | Source |
| --- | --- | --- | --- |
| [Timeshit](https://github.com/NoahNxT/Toggl2Timeshit) | Formula | macOS, Linux | `Formula/timeshit.rb` |
| [Bronze](https://github.com/NxT-Solutions/Bronze) | Cask | macOS arm64 (Sonoma or later) | `Casks/bronze.rb` after the first Bronze release |

Formulae install command-line binaries. Casks install macOS `.app` / `.pkg` products.

Bronze is not on the tap until [Bronze Releases](https://github.com/NxT-Solutions/Bronze/releases) publishes `bronze-macos.pkg`. That package is not a notarization claim.

## Install

### Timeshit

Toggl Track timesheet TUI.

```bash
brew tap NxT-Solutions/nxt-solutions-packages
brew install timeshit
```

```bash
brew upgrade timeshit
brew uninstall timeshit
```

Docs and issues: [NoahNxT/Toggl2Timeshit](https://github.com/NoahNxT/Toggl2Timeshit).

### Bronze

Local-first macOS selection-to-action queue. Arm64 only.

```bash
brew tap NxT-Solutions/nxt-solutions-packages
brew install --cask bronze
```

```bash
brew upgrade --cask bronze
brew uninstall --cask bronze
```

Docs and issues: [NxT-Solutions/Bronze](https://github.com/NxT-Solutions/Bronze).

If `brew install --cask bronze` cannot find the cask, the first GitHub Release has not published `Casks/bronze.rb` yet. Install `bronze-macos.pkg` from [Bronze Releases](https://github.com/NxT-Solutions/Bronze/releases) instead.

## Layout

```text
Formula/    CLI formulae (Timeshit today)
Casks/      macOS app casks (Bronze, once released)
```

Each formula or cask points at a GitHub Release asset and a SHA-256. This tap does not vendor binaries.

## How versions land here

Source repos cut a GitHub Release, then a publish workflow updates the matching formula or cask in this tap.

- Timeshit → `Formula/timeshit.rb`
- Bronze → `Casks/bronze.rb` (not a Formula)

Do not open version-bump pull requests here unless a publish workflow failed. File product bugs on the source repo.

## Migrating from the personal tap

If you already tapped `NoahNxT/nxt-solutions-packages`:

```bash
brew tap NxT-Solutions/nxt-solutions-packages
brew update
```

Installed packages keep working. New installs should use the org tap name above.

## License

Tap files in this repository describe how to fetch upstream builds. Each package keeps the license of its source repo (Timeshit and Bronze are MIT).
