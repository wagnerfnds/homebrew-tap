class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.6.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.0/pierd-v1.6.0-darwin-arm64.tar.gz"
      sha256 "53f5107231fe741cd0da80619fcde4ed7876c61416bfa2e7cc4438aefbfb8073"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.0/pierd-v1.6.0-darwin-amd64.tar.gz"
      sha256 "a74b311b40d2ff12fc9064e40cc7bcc5e14fe09a544eafa81efad570924d749f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.0/pierd-v1.6.0-linux-arm64.tar.gz"
      sha256 "4bd320ebb8050ef2b35c739e62f34b155eabcc3dab9a587b07bd623d2684f6cf"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.0/pierd-v1.6.0-linux-amd64.tar.gz"
      sha256 "432e52e958e38c1486ab5d24e58594b57d9d3751e3a80c6b16b3c8aa47570359"
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
