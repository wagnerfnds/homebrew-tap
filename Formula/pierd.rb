class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.7.2"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.2/pierd-v1.7.2-darwin-arm64.tar.gz"
      sha256 "f89df93b70895c9daac09891598e80c1334513c62f82da2af3c08853f4fa25ff"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.2/pierd-v1.7.2-darwin-amd64.tar.gz"
      sha256 "e2cb5aa4cf9352d9679a8724dccb9aa6c4fe25b779032ebc17dcdd8e0a44302f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.2/pierd-v1.7.2-linux-arm64.tar.gz"
      sha256 "956d7c298aa5503741ffb0ad1e76451d494c1c86db308787bad2e5b5a337a9f4"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.2/pierd-v1.7.2-linux-amd64.tar.gz"
      sha256 "ca735189a6957116db1de8966bf47231671ca76943071f28e85314661e3f6068"
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
