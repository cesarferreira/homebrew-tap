class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.76.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.76.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c93c65dfa424d81a3fe65ed09837cc1ea133207443e16c21a70ec61297d1b973"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.76.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "1de92d85cb888307aa3f92008709655b839f5c4e638e178f53a7fe6e42ee1837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.76.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec354428a6dc9a54ece5ac93ca41242d9c200c8f0e0b1666e6cd3487e69c9196"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.76.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7396a813bcf1017db2da4b68d9265c2ecf5ffdb898c5fa5d36c7330674e4722"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
