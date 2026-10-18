class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.7.4"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.4/pierd-v1.7.4-darwin-arm64.tar.gz"
      sha256 "d07cf19a00a6384eecb87290c1bebe93bdca23b825d4e2acb815a92f1f1da568"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.4/pierd-v1.7.4-darwin-amd64.tar.gz"
      sha256 "694d71c279461d61b6ee26a0731a5ae8711703e2588916b0bd0bb5657458c8e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.4/pierd-v1.7.4-linux-arm64.tar.gz"
      sha256 "f438c45e38351c51924679db01463740f92babdbf9bdd5a703b2d81ff6c3b177"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.4/pierd-v1.7.4-linux-amd64.tar.gz"
      sha256 "5851ae6262545d3e852afca35d4a034cd43d9576a004c32068be180a6e22f46a"
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
