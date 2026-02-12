class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.13.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "32e6026071e3e1479ccb0dfa29f3b89ea5ab2250260224320f9abbe686b98950"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.13.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "31f45e01f0b7bc2e70890110465423c3414c3fe098ba7ed7953a6b5344105b50"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.13.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d35acceeb952e160ff094d6540f44484b62044c3e0e688046d622e457be33fb"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

