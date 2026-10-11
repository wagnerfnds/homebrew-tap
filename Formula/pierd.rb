class Pierd < Formula
  desc "Box server for Pier: run and follow coding agents from iPhone, iPad and Mac"
  homepage "https://docktopier.com/"
  version "1.2.0"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.2.0/pierd-v1.2.0-darwin-arm64.tar.gz"
      sha256 "84cdec94bf4771ea5f2ad5c7d126af6d175a5d88e92f021a449849c7afb2bf78"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.2.0/pierd-v1.2.0-darwin-amd64.tar.gz"
      sha256 "0565c34a1e20ab7950bbf2564630e8169cfcb3243ae268046c2598df29014919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.2.0/pierd-v1.2.0-linux-arm64.tar.gz"
      sha256 "3c7a18e723166667406759074bb50b08501a290c45ed4d97d090ce769e310293"
    end
    on_intel do
      url "https://github.com/wagnerfnds/pier/releases/download/pierd-v1.2.0/pierd-v1.2.0-linux-amd64.tar.gz"
      sha256 "11af4777afed1dc65623d84f213f6270ad2cc732c22fb0e48deb18645c750bc1"
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
