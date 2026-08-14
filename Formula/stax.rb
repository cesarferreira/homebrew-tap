class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.6/stax-aarch64-apple-darwin.tar.gz"
      sha256 "edd4e0548a6386248e388e3d7f5bf380ffd4aa248cc1b992d1100533a9b99b00"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.6/stax-x86_64-apple-darwin.tar.gz"
      sha256 "755989f5db1ba5d0d452791a81eea24e6d371fb71e57f18e469b5e8aab4084ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.6/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3da4f7a6125dcff240f3be313d68bc66203ad008e56f86eaead061d3e900e0e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.6/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0d8100ed5de1781d7ce956950567cc3e34712908c43118b6c679910514a5c15"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
