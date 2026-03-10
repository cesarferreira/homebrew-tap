class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.4/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1cbae8e6383e5887adc9df68d23a94c4a6b729f45194a09cde4cd8ce02a47642"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.4/stax-x86_64-apple-darwin.tar.gz"
      sha256 "569b694cd0b4d9f07191eeb59d68b020add20302139a987021166ee6b7a8a249"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.4/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9c238a997b27bcc7fa513dcd6aafd84e15f505d182ecc395ac48a5d2b853d3a8"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

