class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.9.4"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.4/pierd-v1.9.4-darwin-arm64.tar.gz"
      sha256 "ef5e991f3822336a2b78f115ca3ff0f4e6f27f9eea0bcb290d177ec826278b16"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.4/pierd-v1.9.4-darwin-amd64.tar.gz"
      sha256 "e19a83d1bab94e2ca6d08038cf9f94dc382c27d7cd2f38dc7f966383297601e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.4/pierd-v1.9.4-linux-arm64.tar.gz"
      sha256 "0ac5890e2282a41e248d628a36a836959a50e1a61d6d9657a4ad314c48d19690"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.9.4/pierd-v1.9.4-linux-amd64.tar.gz"
      sha256 "132eb76db8c7cc724d14a0ea10753c5a553771b5d7095aca457f8f51662a9cbf"
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
