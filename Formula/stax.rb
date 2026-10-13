class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.116.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.116.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f3f0f74e7e18417698b2c61e12c6b2b8a0103f530a632a3d239a83f427fc670d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.116.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b1b0e0f86ca018ebf511f4fe79f38edfcab44ca299c1b641019f49ce07eccf3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.116.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85f5b1f3ea74dad41e623e88823584e8a6e155a0000446e3ce4441e5d35ecea8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.116.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b4de28670608034a984c7be2b1327b9b47c6ad3be941dc2587e1bc0f237e6f7"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
