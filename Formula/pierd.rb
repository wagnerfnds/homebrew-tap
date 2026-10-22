class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.10.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.1/pierd-v1.10.1-darwin-arm64.tar.gz"
      sha256 "e55d06dfc9a5de1aba71a988580a636f5a27cd6ac815a231ae66c6b35e95ff41"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.1/pierd-v1.10.1-darwin-amd64.tar.gz"
      sha256 "22ccf91947889c154736616f5befdc18523f424a3c87e18063a07b74d7956988"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.1/pierd-v1.10.1-linux-arm64.tar.gz"
      sha256 "cebde5ff7764d8319ebe015bf520d299df8151e505f512d9ffd5f6a3bf9dbf77"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.1/pierd-v1.10.1-linux-amd64.tar.gz"
      sha256 "665d2c8f9a39ea223dc9935225c8222fc39a96103f7b89fe3716f624691f4efa"
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
