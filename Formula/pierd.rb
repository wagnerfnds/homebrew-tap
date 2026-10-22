class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.10.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.0/pierd-v1.10.0-darwin-arm64.tar.gz"
      sha256 "a77ad3fb1226278a184c40e5831467a48d92cf451fc9049866ddb4a68f39f224"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.0/pierd-v1.10.0-darwin-amd64.tar.gz"
      sha256 "6491017d619e1478d68ad67a0c7fa5b507bffd5103a8ea46eba3375163cf4dad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.0/pierd-v1.10.0-linux-arm64.tar.gz"
      sha256 "be9153456a65ecd8937724ffcf55448ad9463bc1496bc0ccdc1c577bc02c963e"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.10.0/pierd-v1.10.0-linux-amd64.tar.gz"
      sha256 "619dc4867005bfadb0570903f286e84b5670da7be599fab2e9f0b7edf0503d41"
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
