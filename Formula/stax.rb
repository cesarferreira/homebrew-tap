class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.93.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "0f1aba25bc0f6a4715c8e4fff32f75589c0e63668aabcf8f819cd65bcb9261d1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3bd703dd13ef9ba1bb09b624c5c3da8eb80084da2852b5a8244d0fa656f7365f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94c9f8bb8a33f478e6f13c5243e6e254bdaa806954cecb14ab6fbeb61af32cfd"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ca079ae6775c61929eb815ca18f636e124cde6e8818dfa79d681a48c5b7962b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
