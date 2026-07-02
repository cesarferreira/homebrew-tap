class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.92.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.92.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a40f4eb38c3f988c04d975fe050709e13707c43b200a322f5104008b3d1b9405"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.92.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3c9874398def1a9192e5865f3716865d67c4293658e9fbf1650b40318cdf2d2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.92.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "933483af8b0297d3178e5c75ea2887fc1573c3868b6478862175191e8bf0d6c6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.92.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c263ea39e9e8867390a323982c577e3cbb6cbce9620dbd57aac598b1508366a7"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
