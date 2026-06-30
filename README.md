# Kyle Begeman Homebrew Tap

Homebrew formulae for Kyle Begeman developer tools.

## Install

```bash
brew tap kylebegeman/tap
brew install ledger
brew install dossier
ledger version
dossier --help
```

You can also install without tapping first:

```bash
brew install kylebegeman/tap/ledger
brew install kylebegeman/tap/dossier
```

## Upgrade

```bash
brew update
brew upgrade ledger
brew upgrade dossier
```

## Brewfile

```ruby
tap "kylebegeman/tap"
brew "ledger"
brew "dossier"
```

## Formula

| Formula | Description |
|---|---|
| `ledger` | Repo-native change memory for humans and coding agents. |
| `dossier` | Generate self-contained, agent-readable HTML dossiers. |

The formulae install Node-based CLI tools with Homebrew's Node packaging helper
or the package manager's published release artifact.
