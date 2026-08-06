# IDN-Media Homebrew Tap

Homebrew tap for IDN Media macOS software — install apps with a single command
instead of downloading ZIPs manually.

## Usage

```bash
brew tap IDN-Media/tap
brew install --cask acp-control-center
```

> **Note for unsigned builds**: the app may be blocked by Gatekeeper on first
> launch. If that happens, clear the download attribute once:
>
> ```bash
> xattr -dr com.apple.quarantine /Applications/ACPControlCenter.app
> ```

To update later:

```bash
brew update
brew upgrade --cask acp-control-center
```

To uninstall:

```bash
brew uninstall --cask acp-control-center
```

## Requirements

- macOS 14 or later
- [Homebrew](https://brew.sh)

## Available casks

| Cask | Description |
|---|---|
| `acp-control-center` | Menu bar utility for the Agent Client Protocol (ACP) with Kiro CLI integration |

## How this tap works

- The repository is named `homebrew-tap`, so Homebrew exposes it as `IDN-Media/tap`.
- Each cask is a small Ruby file pointing at a published ZIP on the project's
  GitHub Releases page (version + sha256 pinned). No binaries are stored here.

## Security notes

- Releases are currently **unsigned** (no Developer ID certificate yet).
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
