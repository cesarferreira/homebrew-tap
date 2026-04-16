class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.51.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "7e66f278b05bb95200d3b7781fa7a10e15fcd0cffa31d87aca804d887447b202"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.51.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7adebaf2e45e12f5d8147c62bc7e11116ea647e1c1b49886dc3fbef379487c41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.51.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b37a67476c27c74d4cfad5dadcda6b9c8ab5bef41a9c6da0d8070ae322d722f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.51.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbd5c8a61fbff222fb213b6ae43ec29bbdaec4d068bcdd0dd4310e6128f45d7f"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
