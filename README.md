# wagnerfnds Homebrew tap

## pierd

The server for [Pier](https://wagnerfnds.github.io/pier/), the app that shows and drives your coding agents (Claude
Code, Codex) from iPhone, iPad and Mac. macOS and Linux:

```sh
brew install wagnerfnds/tap/pierd
pierd setup
```

`pierd setup` runs pierd as a user service, installs the agents' hooks, adds your git repositories as projects and
prints a pairing link with its QR code. Binaries come from the tagged
[pierd releases](https://github.com/wagnerfnds/pier/releases) and are verified with SHA-256.
Issues: https://github.com/wagnerfnds/pier/issues.

## LazyBrew

Install LazyBrew on macOS 13 (Ventura) or later:

```sh
brew install wagnerfnds/tap/lazybrew
lazybrew
```

Apple Silicon and Intel binaries come from the tagged
[LazyBrew releases](https://github.com/wagnerfnds/LazyBrew/releases) and are verified
with SHA-256. Rust is not required. This is the project's tap, maintained independently
of Homebrew/core.

Update:

```sh
brew update
brew upgrade lazybrew
```

If your Homebrew version asks you to trust a formula explicitly:

```sh
brew tap wagnerfnds/tap
brew trust --formula wagnerfnds/tap/lazybrew    # or wagnerfnds/tap/pierd
brew install wagnerfnds/tap/lazybrew
```

Report app issues at https://github.com/wagnerfnds/LazyBrew/issues.
For release maintenance instructions, see the main repository's RELEASE.md.
