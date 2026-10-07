# LazyBrew Homebrew tap

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

If your Homebrew version asks you to trust the formula explicitly:

```sh
brew tap wagnerfnds/tap
brew trust --formula wagnerfnds/tap/lazybrew
brew install wagnerfnds/tap/lazybrew
```

Report app issues at https://github.com/wagnerfnds/LazyBrew/issues.
For release maintenance instructions, see the main repository's RELEASE.md.
