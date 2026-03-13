class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.30.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "3a7a871b2158ebe2c48227c438b389bbf5242de8e64ff70e395f44b367a82edc"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.30.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b50a6cca668180d046baaefd0a1091e7ac9cc1e77e7a592e91fce81df4ee7357"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.30.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "adbf53d116a10795581ce99676e48d2c43990dc34f406f95b17fd7fe2ddc7ab2"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

