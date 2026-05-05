class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.67.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "79c7ec0b770e72d564ab65d23bbacef51abf6dce06453ced39d866f96fef21ca"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "f6de92d56ed359899f60b34d48e180e34fa2253360a1570e056910e84c029cb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19d3331f73b4aa3b432bfb683eaeacf78ee009268bf2a5815f40c63f96e27877"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b98f852a3e15b0c8e6732124c452a44d6c7c716e59d7850909824f651b922368"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
