class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.14.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f6bfd41b728ff52e3fef29733717a11a9ee8c0c08ded32725488604e018b73fe"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.14.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "66ec942ee6541f4060685638f87584701a22f6d1010e86a5cd2cc39d10c14502"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.14.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a2000639cb27a6ab85ff12c90e8ab524aaf6c9ee9647481ccd5a5c999d9e80a3"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

