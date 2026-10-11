class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://wagnerfnds.github.io/pier/"
  version "1.1.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.1.0/pierd-v1.1.0-darwin-arm64.tar.gz"
      sha256 "5832f9c342c24c2e3623914e6d1e6e6bbb596e908d8b68d14c918988f2fc6981"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.1.0/pierd-v1.1.0-darwin-amd64.tar.gz"
      sha256 "b6736e8a58eec4338d047ec8f854343364831c6b8b9207c496f007c822e1df36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.1.0/pierd-v1.1.0-linux-arm64.tar.gz"
      sha256 "234d1209c8c9e92a649d6990bf2a3ce6bd572e39c3084db2b13cd090ae06939c"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.1.0/pierd-v1.1.0-linux-amd64.tar.gz"
      sha256 "4e31c399d2a240891d82411501a6f916fa276a5ac21b516de33673a33559b61e"
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
