class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.8.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.8.0/pierd-v1.8.0-darwin-arm64.tar.gz"
      sha256 "dad7b644fbb96c4ed9040f79e354ca9c16fb75515b3c29bbd626167ed2e0ffae"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.8.0/pierd-v1.8.0-darwin-amd64.tar.gz"
      sha256 "355ee63e96d9aad82f089d250c3acc84b38cc2f92e7d819c174f2b06ca3036c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.8.0/pierd-v1.8.0-linux-arm64.tar.gz"
      sha256 "efc4b1f8d5791ea298c41f2c84b64926bd0ae79e04b54859c7f6114a96f1cce6"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.8.0/pierd-v1.8.0-linux-amd64.tar.gz"
      sha256 "a41053a3b4fa17debaafc7f26d49fbbb3cdb92aad898ac3bd4bc31bee3154b2d"
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
