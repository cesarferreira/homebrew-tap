class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.74.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "531aff2e09e1b7dddca3a128defda86cc995ebf21b254c8821b57c5836ffb5cf"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d1ed30c46b6e57fec1a8b4a92eece4ed3f48852d460b82320f4065567ac06cbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81beae47411e6f26df463620643c4a68686d7a5a95fedb71775332b99801ba23"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc4873b5fae1ac153e0bc6d9b694c3d535213782c1df53b9e4017e711b9cfbee"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
