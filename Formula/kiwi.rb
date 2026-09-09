class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.2/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "a081667527324c36367d92a8fec704e4c6dfdd5f9cf208fc712327ed194862d7"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.2/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "acfe32019c99d6a7dc004d3503bb3ed0343032524c116064126d1a132005f831"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
