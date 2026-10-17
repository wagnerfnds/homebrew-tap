class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.7.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.1/pierd-v1.7.1-darwin-arm64.tar.gz"
      sha256 "f15825b97ce6bf7ec87207af81e67cfb2463e3e995836b28bf913b57469899f7"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.1/pierd-v1.7.1-darwin-amd64.tar.gz"
      sha256 "490da7537dce140fdd478d9c049ead328adb3f222a2a5db2b3e9adb93641b9d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.1/pierd-v1.7.1-linux-arm64.tar.gz"
      sha256 "1cf897056e76254c8e94feb32e95a87542f9a4b1179ee959a3ef088adf18922b"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.7.1/pierd-v1.7.1-linux-amd64.tar.gz"
      sha256 "4fada19bb33e8663f5085e14522583c9b3346458eb6019bbcfefdf430253d69d"
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
