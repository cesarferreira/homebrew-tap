class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.96.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.4/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f5e5aa0251fcc2d358891e4ee7b7765cd9cacc50c4d8fe3691e5d9ff87568254"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.4/stax-x86_64-apple-darwin.tar.gz"
      sha256 "432a356cc651c536e74e2b18d3eb4278fa7f8d869e917f2f44619b712a1b280a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.4/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3c21587a0da5e9cc8828af98ec5c922d51ba64ac1210844865f26deb4b82fe9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.4/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0be4fa08eaf4b864ed401d88a5e89feb597f516a29761c0d0621328746c55547"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
