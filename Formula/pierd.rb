class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.3"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.3/pierd-v1.5.3-darwin-arm64.tar.gz"
      sha256 "d5be1f55fee38792d14ffaac069e0c834eec6ae823deba9c4fc71b95e2239cb3"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.3/pierd-v1.5.3-darwin-amd64.tar.gz"
      sha256 "9969bd7dd2a201e5d27836ddb13b5e7bf84e0f1be20ca1732aeace6d3bfee71b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.3/pierd-v1.5.3-linux-arm64.tar.gz"
      sha256 "b5309b5d2d16d352ea2edc6886e49b3563a79207fc1b297be11b74d0554ecb84"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.3/pierd-v1.5.3-linux-amd64.tar.gz"
      sha256 "c49d86f82c2b967c28c205efa5b5a1638e49031a03a1b4ba47d0a239604ed610"
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
