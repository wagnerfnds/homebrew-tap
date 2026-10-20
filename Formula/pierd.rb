class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.9.2"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.2/pierd-v1.9.2-darwin-arm64.tar.gz"
      sha256 "83a498e44ca3920f7f34e9719b5012a35c6d36be8d3ff82af07b5349a9549225"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.2/pierd-v1.9.2-darwin-amd64.tar.gz"
      sha256 "c222fa1566fabf9b162a2dd3d7785ca26da20e72439b25fc5178ca9a6a7332ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.2/pierd-v1.9.2-linux-arm64.tar.gz"
      sha256 "31551667c2a3d75a4aa6202f106790171fe8e6ada4c5c7a7c47afeca48ad13d8"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.2/pierd-v1.9.2-linux-amd64.tar.gz"
      sha256 "260e507c70e318194ffcab048baee3d2f899be88fd075e88e0cfd8183552c3d1"
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
