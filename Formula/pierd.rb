class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://wagnerfnds.github.io/pier/"
  version "1.0.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.0.0/pierd-v1.0.0-darwin-arm64.tar.gz"
      sha256 "cb400e76077cbce38aeeb70236b67b53d926855530617c9d6859c7c9297d8369"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.0.0/pierd-v1.0.0-darwin-amd64.tar.gz"
      sha256 "8a1b3e8f8b158c7b5d1efd72d3b85e242e89d55d897942cacafbac8b7a1a0fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.0.0/pierd-v1.0.0-linux-arm64.tar.gz"
      sha256 "aeb601b8ccb043bd16c19ee3e1a0a388f231cd5ffbb0f7ae55d65c47a87b5ea4"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.0.0/pierd-v1.0.0-linux-amd64.tar.gz"
      sha256 "7e90d1dcb926b4ee69079b656b5d013d03387f06631e1f90d25f62a8ebc99b48"
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
