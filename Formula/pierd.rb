class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.3.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.0/pierd-v1.3.0-darwin-arm64.tar.gz"
      sha256 "a297ac273fa8a09c86101a525f70317e2d51b2c54c8d7bb575f20e5c0247c250"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.0/pierd-v1.3.0-darwin-amd64.tar.gz"
      sha256 "46a10e69192cbce099632a14847d0915ea2f783b0072365fe5864e2e2c16290b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.0/pierd-v1.3.0-linux-arm64.tar.gz"
      sha256 "14d943fd931b36f4577f8f5bf2d4a4ab715fabc63114d97b78af7ffa0ce9de07"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.0/pierd-v1.3.0-linux-amd64.tar.gz"
      sha256 "4ffa6477c0492375870768442b9486576fa579eade6de96ae38e5a2a5e8f7eac"
    end
  end

  def install
    bin.install "pierd"
  end

  def caveats
    <<~EOS
      Set up this machine (a user service, the agents' hooks, your projects) and pair the Pier app:
        pierd setup
    EOS
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/pierd version")
  end
end
