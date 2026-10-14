class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.4.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.4.0/pierd-v1.4.0-darwin-arm64.tar.gz"
      sha256 "b186a6ca347506b152f710a30e6120f8f5d8cbc697bdd9fd14518ddb10921102"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.4.0/pierd-v1.4.0-darwin-amd64.tar.gz"
      sha256 "e294f738dc4cdb77319616282a20a4d0016fa0cce225134500cd5661a651efac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.4.0/pierd-v1.4.0-linux-arm64.tar.gz"
      sha256 "06ad0db4fdfdb6cbe085c5632f4384c68fa8b43ec0d5da7a3f1e40c89456ffd2"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.4.0/pierd-v1.4.0-linux-amd64.tar.gz"
      sha256 "2a08cb0d821e363ab70c001ffd81ace6d8b415ecbb67e6dc5c5a5350b758717a"
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
