class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.9.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.1/pierd-v1.9.1-darwin-arm64.tar.gz"
      sha256 "858ecbe5668b3a92c108e8f87a6efa850f50d7b85fd97b396b413b6d2bdda531"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.1/pierd-v1.9.1-darwin-amd64.tar.gz"
      sha256 "9e4899be001f1fee40a1aa7b6d24a4f6069e17a8937f2b2b69ec0bd04e49287a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.1/pierd-v1.9.1-linux-arm64.tar.gz"
      sha256 "461590dbef54cca78945377fb92b49ec54057e812c4ed8d579d6bc3fe2af38bc"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.1/pierd-v1.9.1-linux-amd64.tar.gz"
      sha256 "605e20261e3c79f84ff5f5caf9db65fe251a34d4af82113958dedacc7b11ccfc"
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
