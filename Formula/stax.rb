class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.87.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "cd2858dd5f000e8f63d539d594b09d9f651cc6a8cda1b97cd29ebef4cd2aea03"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "1b95582811c924c701ad55b687791b87258783b8ac3decd2c068353500371eb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb3df3c7764013b78d4a5022d8470ed6329849625b2880391208b73b1059c2d7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a202370ecd12d13022303e03ba139474fb8321c0c0d6114bd6eb24bd28ea872"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
