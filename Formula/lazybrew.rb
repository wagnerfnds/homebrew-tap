class Lazybrew < Formula
  desc "Keyboard-first Homebrew management for macOS"
  homepage "https://github.com/wagnerfnds/LazyBrew"
  license "MIT"

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/LazyBrew/releases/download/v0.3.0/lazybrew-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "976ee07dcc46e9bfc90b98f945d997a3c20591f9a5f218f50f8a5972b1636446"
    end
    on_intel do
      url "https://github.com/wagnerfnds/LazyBrew/releases/download/v0.3.0/lazybrew-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d5967a5c32131576a608da79bd2706e16efa95ef0d01df0e4bad5418b2aa7ebf"
    end
  end

  def install
    bin.install "lazybrew"
    pkgshare.install "config.example.toml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazybrew --version")
    assert_match "--theme", shell_output("#{bin}/lazybrew --help")
    assert_match "needs an interactive terminal", shell_output("#{bin}/lazybrew 2>&1", 1)
  end
end
