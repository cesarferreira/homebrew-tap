class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "61d5a3e55cf78c669b333d5ef813bb74e6042a30f21f84c4a59842aed4d826e5"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "12d7149de5b7be12c0fa2e71ba43ca972b191a6332197d76ee235e5c1e2d0a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "898ed9595fd1a9334942a1ae9c2e8d9f1acbf002c99d9e248ccb1143990b1280"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99a4a3b08e41ae9ce1486c5a73a24f889dd1a9b9f4899b0708e1010acfdb599a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
