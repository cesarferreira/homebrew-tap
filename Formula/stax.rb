class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.81.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "add4eacff837ff84e3c8a4216d348e071840bfff28b4e5cf59451224ca7abc12"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b62c894f7fe3ccc1a0bbb5c5ccc50a548929bf634305271189272dcb2f1e3b5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1286122dd19020460acbe944011d8cbecc699ba21371b794ec978173aafd9e46"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91839244880619ca08f8c75c0429542b4a20d85189262ec8b251f000a6ed9b34"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
