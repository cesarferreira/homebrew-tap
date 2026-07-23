class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.98.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "49d30f1a463e98165ac2449b7a86f864a85e12737733443015e439a28a26b9c9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2ca360dacb1e1d40c611fb8d2ed13dcce77ae4b17920fe5e674542a91da0be87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0498601624740124f806442b5ed384dd3cace048be99367a18776186cd6080cb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c75bfa41a20b2f84a08c74d53767de44e93cf4efafddd5d33181249f4ce1ae65"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
