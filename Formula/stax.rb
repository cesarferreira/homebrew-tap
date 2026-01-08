class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.7.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "9b8538cd9d2d7b7186fcad8a6ebcd0c3d8c21f2aeac54d87eaf7e85212f62a52"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.7.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "69f0d6814ab30fb3687e7afb696c5a27b1abe8a12feb4b99ea6733001b8528cf"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.7.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7cdb06ecedd6bd50c17e8364dab9eab73f5caf18e68238d9e30215a858fff04b"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

