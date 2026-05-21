class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.79.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.79.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c01150f8ba34f696b6ecfef34c79805723af3d36d7c84266e379499bd9b5b831"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.79.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "9b8377c4d71a2cdf81b894f233ffe168dbbfdb78cc62cc4b6e99d487d8977cec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.79.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9a80e7aa76804d9a98d88711b59f52ad98ed29d539cd16f07c522d448f2157b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.79.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e11366d2757af47056a88db09feefdaa9d53350684ee33f3415b387f4be630b5"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
