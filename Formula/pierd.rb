class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.9.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.0/pierd-v1.9.0-darwin-arm64.tar.gz"
      sha256 "cebc0a300a290e676975dcd6fc0ad34fe12d325e88ee4505496150bfac88d340"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.0/pierd-v1.9.0-darwin-amd64.tar.gz"
      sha256 "4eb70ebc80b2ae874e4093f9febbee774250631a6b289ac5f55ae75c7ce0ef08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.0/pierd-v1.9.0-linux-arm64.tar.gz"
      sha256 "40319afe155cec5bba7d056b1bd7261c6d499dad7d49aaa00ebc67b8d0f4a6b7"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.0/pierd-v1.9.0-linux-amd64.tar.gz"
      sha256 "7528aa388010a12968034cb586aa92cdd7e31918ce72e4a60885bc92a82af249"
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
