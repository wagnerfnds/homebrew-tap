class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.1/pierd-v1.5.1-darwin-arm64.tar.gz"
      sha256 "d3cef48498f746997775092c210a9a7663708d897bcc1d4b0aaaeb7301944465"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.1/pierd-v1.5.1-darwin-amd64.tar.gz"
      sha256 "71ae1343aa4056c20c032e59ea8ae30c0cc89c418cae998d765df577e31b6697"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.1/pierd-v1.5.1-linux-arm64.tar.gz"
      sha256 "470d8e5e3ab7ca42fc8a3744282831ddbf695253665f5ee87ef3f84e8adec0ca"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.1/pierd-v1.5.1-linux-amd64.tar.gz"
      sha256 "af5bf7d90dc5c2f1ea89976b8427ec8d6d1458bcbe1042da25191156b8f0c10a"
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
