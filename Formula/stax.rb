class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.102.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4250a127bd6d8a3da7a9c21dd045656d61b6f04980493d6106dcfb073833a8e0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "244dbb3c30633254fa257a2a5744ccf03fad4bc2d0ee0c5421d2c994d2cdb438"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cece6279e0e310dc0ad9fdcb6c043937b32b2d6d74d724aa029fa82f859459a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6323ca9aa5754fbd2802af487e43c1d0ab11d50983d258c1709788f8218818fb"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
