# homebrew-reed

Homebrew tap for [reed](https://github.com/AzisK/Reed) — a CLI that reads text aloud using piper-tts.

## Installation

```bash
brew tap azisk/reed
brew install reed
```

## Usage

```bash
# Read text directly
reed 'Hello, I will read this for you'

# Read from a file
reed -f article.txt

# Read from clipboard
reed -c

# Interactive mode
reed

# Save to WAV file
reed -o output.wav 'Save this'
```

## Update

```bash
brew upgrade reed
```

## Uninstall

```bash
brew uninstall reed
brew untap azisk/reed
```

## Alternative installation

```bash
# With uv (recommended)
uv tool install reedy

# With pip
pip install reedy
```
