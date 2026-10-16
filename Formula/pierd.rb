class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.2"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.2/pierd-v1.5.2-darwin-arm64.tar.gz"
      sha256 "b77872bb985b96d3df87da51d9abb3f4d0110c1cd657f285f0a1115beb49bd30"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.2/pierd-v1.5.2-darwin-amd64.tar.gz"
      sha256 "f41c89ac9b13715ab0ea95d7a1ac716e49e27f84535bc22ada0a120ff85fc1f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.2/pierd-v1.5.2-linux-arm64.tar.gz"
      sha256 "b8eef89ff1604be7a8461d2a2fc27e773ce95761f721bb9061625e7d43c3ae77"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.2/pierd-v1.5.2-linux-amd64.tar.gz"
      sha256 "0df383916f9531a45c5bd0f1ae4183fb5cd3e88969d3dd7967b326871ba62b64"
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
