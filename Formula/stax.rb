class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.69.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "635f4d426101489240f94ecd1e3bfd47c29ad75f3db626fd22a9bd93775805c4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6a512563da255144a1cc9a4902a8641fd3e04f9a2826a95362c125e1f2886099"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6eb5f6ba270d405e44349e3da32f1241a107df2ff86ff8523c42c712ed85ff19"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a0175ac8fa812e374348c02b6be87b4d33921fcac630dbb6eea86cb2022de2f"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
