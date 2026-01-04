class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.5/stax-aarch64-apple-darwin.tar.gz"
      sha256 "17db49a2bc2ea47d07e57fe5becbe5c8486188e53cf5e5e5b9e1e76db14a014f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.5/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e51cb625a796746cfa854f41dc2311a7cf4d1e4bbb4914175d8beb6ec8727efa"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.5/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "be4beba3567fb6409bcf3065ebeda8cf73ca24bc67baf62069993a54ba43a8cd"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

