class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.55.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "42964b0626a0d71d1af870e4e870872f7ef34ca398d660d364c65c1532e5352f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.55.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "89c9f6289ef299856501509c7592dcb5a235e93d2d7670472d4dc2ceb7b3c747"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.55.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb9fa16d647e2f272e7607cebca38b6eb4e5aa5acab16cb04f2a01042310f61f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.55.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0b66adf2ac0afcc529cf2f072152d84ee21bd0aed3fbbfd209a0cb4eeaa2258"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
