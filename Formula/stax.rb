class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.117.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.117.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ae592e0def1acc31bf31348b75442bd29aaef94e39d9892cb2e6e1ea2c0ca5d6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.117.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "bfa9d8ddf32e29679b8f659abf0f7ad224240d41ea8de4b35027011c1379a9c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.117.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a327c6a5dcc3499972a0ee3e38834476fe403120572752c4d6d68e0cd8118c14"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.117.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83389c524c6a89465394ac3a5f322ba2cf0c0875633b42dab08608556055f8c8"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
