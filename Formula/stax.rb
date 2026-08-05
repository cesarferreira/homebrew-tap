class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.103.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bb4088500652d81ea06f746ddec1ccea5375232dd581292683c0213780281a99"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "744f13d7c55361092c6f75e77dc247313ff80f912c0a6096a749dcc6f0dab669"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b14c7d0ab72ca9bb9dbb5237d165c46b8d8c724628b4cc6554920ce83ad5a1a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bdcfd82c0e67821ec3e228d0df779e858d1dea650b1a9f2c1a15a44c7705f54a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
