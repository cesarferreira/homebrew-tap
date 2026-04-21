class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.56.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "716b165fda2003158664abb03115fe29bf0ece30bfea7fc7525a14c909a8cb4e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.56.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e43b59b22c71f88b6555e2e09e8d3609507310a6dd33106b0b18579908191fda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.56.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63f761e2ff0dd573e6fe3635fb7e88c9dfc4ffcb8d19dfc2e0e7924be1d31ed4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.56.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97cf51c0b4ce85575f31df0c42afde502e18117a31a4125df70171d09b519de3"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
