# AlbertoBarrago Homebrew Tap

Homebrew formulae maintained by Alberto Barrago.

## Installation

Install a formula directly with its fully qualified name:

```sh
brew install AlbertoBarrago/tap/<formula>
```

## Formulae

| Formula | Description | Install |
| --- | --- | --- |
| [`java-manager`](https://github.com/AlbertoBarrago/java-manager) | Switch between JDKs registered with macOS. | `brew install AlbertoBarrago/tap/java-manager` |
| [`wir`](https://github.com/AlbertoBarrago/wir) | Inspect processes and listening ports. | `brew install AlbertoBarrago/tap/wir` |

## java-manager setup

After installation, enable shell integration.

For Zsh:

```sh
echo 'eval "$(java_manager init zsh)"' >> ~/.zshrc
exec zsh
```

For Bash:

```sh
echo 'eval "$(java_manager init bash)"' >> ~/.bashrc
exec bash
```

Then select an installed JDK:

```sh
java_manager list
java_manager use 21
java_manager current
```

## Maintaining the tap

Formulae live in `Formula/` and must pin immutable release URLs and SHA-256
checksums. Before publishing an update, run:

```sh
brew audit --strict --online Formula/<formula>.rb
brew install --build-from-source Formula/<formula>.rb
brew test <formula>
```

Keep formula changes scoped to a branch and release them only after the upstream
tag is available.
