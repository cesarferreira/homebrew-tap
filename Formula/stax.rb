class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "31521d855ed5e86d842c2c70b556d9e90703658f45b916230cd025b6b27aa601"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "439f8d3ae418ab0460e9358b3d49c068ce3561e76ebd6bc1ccddcf67eb841fa5"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.22.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "61871e12c7a39e551c17eb1d01587ec025136327c7414b2e24a545a8453592f6"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

