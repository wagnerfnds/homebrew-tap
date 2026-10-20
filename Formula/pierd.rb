class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.9.3"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.3/pierd-v1.9.3-darwin-arm64.tar.gz"
      sha256 "188eb932bc7e7d740019d3586e96107b0aeb711fa28b7aea15d0aa7adbf14ddf"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.3/pierd-v1.9.3-darwin-amd64.tar.gz"
      sha256 "cdfbf812425588e7f9cff55da5c2d4a726c6c3a524249f821aa3f7ddea1b9b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.3/pierd-v1.9.3-linux-arm64.tar.gz"
      sha256 "69dd2a82be115942f34711d41cf1e7d1773668bbf4cd0db4b8cee2b71ee7b2d5"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.3/pierd-v1.9.3-linux-amd64.tar.gz"
      sha256 "e212b1b41de36ede61c9c85bd079a5e09282feaa82a01844ae90029481f05067"
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
