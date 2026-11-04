class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.118.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "8e24e0b66b9d6fc43623738daf47eca2f91ed17c3058cd8d9ef27626c2089846"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "466058f5f495a099799f42e1d93ed4a89e06bc2111c3d3bfabd8025962158f7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "811a77a6e2e9c67418886cf432de0a23de45cadfe17b203c5c6530db09bfcde6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1847a15511af1b80ec565d0078c8765b83a2308d20daadac75bee9b08e36b00c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
