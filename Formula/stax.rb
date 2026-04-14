class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c6cc5f622b1b3e9937abde95c044dcf48386ca7363aca49ad29fad724cb07b38"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ba803f0f4d0b63c0ea58390d129e18c99b481fdd461aeb1855574a927965a1b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c4fc7629e41e8c03f4d7384d03d01afd443f380afa502e42491d756fce7db3c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.50.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9bb3ad49437f2858df1f211e9d1511a6855bf61a35412a2ab6f79d6eee8cc5d"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
