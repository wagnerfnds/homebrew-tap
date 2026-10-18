class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.7.3"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.3/pierd-v1.7.3-darwin-arm64.tar.gz"
      sha256 "f4faa74d8de0129f2f750dd0876a6c4aea1bc6bb062052e5d951eac49be6662e"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.3/pierd-v1.7.3-darwin-amd64.tar.gz"
      sha256 "7f21dae3e8ea64696207fcd1b41eddc6a7483b6bc66ec063fb9337d9acfbebdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.3/pierd-v1.7.3-linux-arm64.tar.gz"
      sha256 "b47852db00b1a1c65686357699588aeea2b6da9ff42ca67029eb0f2c84c5e8c4"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.3/pierd-v1.7.3-linux-amd64.tar.gz"
      sha256 "46080332de10a2a99efa9a4ef426442648ad189423158768b10a3d320603c227"
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
