class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.4"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.4/pierd-v1.5.4-darwin-arm64.tar.gz"
      sha256 "a2b134e38484a5727cbfd6248becceb5338b7fd10d0f427978d81a8e0ba89bc8"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.4/pierd-v1.5.4-darwin-amd64.tar.gz"
      sha256 "bf7db68082c4328c954b15f541f17e9571cacca885b31187356e487d5c3a8743"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.4/pierd-v1.5.4-linux-arm64.tar.gz"
      sha256 "4fdf683150b5ee54c35ff7cbc5fb0ec56639566a60390625342e1a2149d1321e"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.4/pierd-v1.5.4-linux-amd64.tar.gz"
      sha256 "d33724175a62457d71da0142dae9cd9f44fc41bf13bc623d9999b1f29cb43196"
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
