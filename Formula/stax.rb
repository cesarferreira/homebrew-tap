class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.59.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.59.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "8b998d8a27b0b1cb04d43dc6399ebb1cd2c0ed06b094e3db71d4b6b2168df7ab"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.59.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "793974d57fa1c879c6af47da9e2f60baeec227be92e7b1535931781740245500"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.59.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32d8084cc03df44f9947cb3ea4cef2a1a2718ba289e33a2945c1ce1aabbaa475"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.59.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ada4ffd8cb01db3918b1d067f077843d9dd09592a4dff6cc8b77a686a0e8e00c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
