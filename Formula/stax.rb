class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.74.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "34e305ee4b03433fd420615d27c5deff0c99643a16eaf76919f63f7974be4b69"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "c2e5098477bb3a1a5dbba38a740540084b67b687e44443235797b30bc734221b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2447d4ac047b96067a1597ab5da3ab5d4c27c304690d1e6067a417ea84b1946c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db1602da623c08723082a62f0fe8c15427f2acfef593a2b2bde7acd7f2a14a21"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
