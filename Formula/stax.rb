class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.102.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ff098c97602c7b4167995ad7b1a2734fda5b9521b1590b7c8242c3a8c01be81b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d01124e0cec00c410cff92a878c5fb1b62a7f895f9d164edde6eb17aab3afba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8e01262016292441fbcb56443cbfe361ed10423d9522376caef8af5db2e9e29"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afb32e10120735a7f0e311d11e3b2471eda09b82cf51c364fc81e6643c70dab8"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
