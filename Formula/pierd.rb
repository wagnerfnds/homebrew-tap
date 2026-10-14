class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.3.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.1/pierd-v1.3.1-darwin-arm64.tar.gz"
      sha256 "f0b6b6dde23b4369d5310fa1440c6a215351a0efd5bb109045a2156bc34a946d"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.1/pierd-v1.3.1-darwin-amd64.tar.gz"
      sha256 "d2eb8729adec7e273b47f8636c3cfe45a95323f8d058e496602e592478cc46e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.1/pierd-v1.3.1-linux-arm64.tar.gz"
      sha256 "632ffe61275f5a355ecf7af70ac7363d877ad8fa68e8c89721afe72df85ea493"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.3.1/pierd-v1.3.1-linux-amd64.tar.gz"
      sha256 "74e89c42aeacfc465dc7bd4d17f957760e06bbb0e16690cab448e9bb5b2fa615"
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
