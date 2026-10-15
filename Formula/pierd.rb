class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.0/pierd-v1.5.0-darwin-arm64.tar.gz"
      sha256 "067c1d98d625f8682e3a63be52076469bc871d4ae93d3581e520b685baf13094"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.0/pierd-v1.5.0-darwin-amd64.tar.gz"
      sha256 "9c66a99f2fdb31c76b44b623f5c79411a7caf396a37ac9204f0a781c3db08eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.0/pierd-v1.5.0-linux-arm64.tar.gz"
      sha256 "efd2a4cf685d66e522b75aac28a70326748975150596e77918ad87980a13f246"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.0/pierd-v1.5.0-linux-amd64.tar.gz"
      sha256 "1c9d9fe43aa6d15f18385ef1299e33d2812b3e0cda37a48f7caa9616a5dddc20"
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
