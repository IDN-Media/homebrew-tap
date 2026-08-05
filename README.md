# IDN-Media Homebrew Tap

Homebrew tap for IDN Media macOS software.

## Usage

```bash
brew tap IDN-Media/tap
brew install --cask acp-control-center
```

To update later:

```bash
brew update
brew upgrade --cask acp-control-center
```

> **Unsigned build**: while releases are unsigned (no Developer ID certificate
> yet), install with `--no-quarantine` to skip the Gatekeeper prompt:
>
> ```bash
> brew install --cask --no-quarantine acp-control-center
> ```
>
> This is an explicit per-install opt-out — Homebrew 6 no longer lets the cask
> disable quarantine itself.

## Available casks

| Cask | Description |
|---|---|
| `acp-control-center` | Menu bar utility for the Agent Client Protocol (ACP) with Kiro CLI integration |

## Security notes

- Releases are currently **unsigned** (no Developer ID certificate yet — pending
  Apple Developer Account Holder).
- Verify integrity before trusting the binary:
  - Compare the `sha256` in `Casks/acp-control-center.rb` with the one published
    on the [GitHub Release](https://github.com/IDN-Media/acp-control-center/releases)
    page, or
  - Rebuild from [source](https://github.com/IDN-Media/acp-control-center)
    (Apache-2.0) and compare the produced binary.
- The plan is to move to signed + notarized releases once the certificate is
  available; this note will be removed then.

## License

Casks in this tap are distributed under the same license as the software they
install (Apache-2.0 for `acp-control-center`).
