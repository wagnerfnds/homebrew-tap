class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.6.1"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.1/pierd-v1.6.1-darwin-arm64.tar.gz"
      sha256 "bc4aa1b0011103d8d8a03cee8fc8f4dfc5205545ffb14b719796cfcf468e63cb"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.1/pierd-v1.6.1-darwin-amd64.tar.gz"
      sha256 "451897d696b7c39ef489f2e6e542b77ca927b0f06aa4c85e7bf25ed05f15d36f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.1/pierd-v1.6.1-linux-arm64.tar.gz"
      sha256 "8525de0fa6162bd7a74b3e5712358b81fe1eeb9dd125989fb472faa36ef94779"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.6.1/pierd-v1.6.1-linux-amd64.tar.gz"
      sha256 "b3f6b1bde3987f84d25b24edc4fab7f0520f1e68f1cc18ea196ed85a547d95c7"
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
