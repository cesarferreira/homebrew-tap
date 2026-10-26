class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.118.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "0801f0b23818c6b27a90e0d7636a85803ea9d72eb84124445d514c39d43bfe01"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "13478edbcf7efb5b414425279a540824072455058831360f3a5ff3372bc68939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d8a7196755c2133719ebaaa70a2140cb99d9c9609cb19bd76cb31c1ce443cc1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "deccfb17b206417df908b0b5616c1637f4b45021e44299d5416cc2ca5da9e829"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
