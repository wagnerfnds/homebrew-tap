class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.5.5"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.5/pierd-v1.5.5-darwin-arm64.tar.gz"
      sha256 "b8a8cb708714dbc795855796e88ef31e8edbfb8a317459c3fdb0f6e75a51b1b5"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.5/pierd-v1.5.5-darwin-amd64.tar.gz"
      sha256 "ffe5c778309b22f39af574b1951077072663380d0b3ee19c18875e876368010b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.5/pierd-v1.5.5-linux-arm64.tar.gz"
      sha256 "c0ee01fe00f067295f7b0984f841e8242436b92d0c06ef36444dcf691fa6ba75"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.5.5/pierd-v1.5.5-linux-amd64.tar.gz"
      sha256 "b84a3dee4bd484038f429bc2fe6dcce9944a9b100ef7ed736d4d8d68d2089700"
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
