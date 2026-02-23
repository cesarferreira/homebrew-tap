class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.18.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4a8ad14938cea8193563a99ab84cb406852842d9f04bc40c269866a73afbd2cb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.18.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "371871ac69c0d6d7bc6cae1621268ae007eed03c87e668548f667eacee0b6350"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.18.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cad7a6dceb04c1ff2118e98309189b99883106fdda7fc4ca8a1c1ba3539d09f8"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

