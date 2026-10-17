class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.7.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.0/pierd-v1.7.0-darwin-arm64.tar.gz"
      sha256 "eabcf5a49ffb190873767f949e3b6e4467b930cbe917036c732b57f61f24f596"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.0/pierd-v1.7.0-darwin-amd64.tar.gz"
      sha256 "378555494c2a6aacd312ce7baf8b8c3b27606da93c054e35efb6baf8a6b6a56f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.0/pierd-v1.7.0-linux-arm64.tar.gz"
      sha256 "3f03f106f342cfb4d50f377bf99f64611097c5f64038f5a7b3c9bc9085f96825"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.0/pierd-v1.7.0-linux-amd64.tar.gz"
      sha256 "25834088b96670b2d0c57461864c18ce82f3b8f0493cda2dcaef2b2df05500a9"
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
