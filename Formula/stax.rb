class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.50.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c87476e9ad14b7d571d3c05dbd1501bb016e3c534d2d4e5429b9a63fc3381fb8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "1302aff4155ad7065787a7abf61337b4dede41ed14e4a0b148f7a584bad61b56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c4c58e8d0874f153bf3f3a7b820a25bfe1c884ee7391013c2d3a7127a25ea32"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4249ad4887a52abe31b025babe1c7d251acb0a5af1d72d7c8e8cb2ba3b9eb0cf"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
