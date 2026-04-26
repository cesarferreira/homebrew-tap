class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.58.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.58.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "8ebfb8ecb418dd3490dd7bb85274742bd1232c36e51fe35e1773474c2572c436"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.58.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d6d804077d8f2668af5533418eb12810c51602d006d4de2c56bc472f76168950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.58.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5d3ef6d3dc102621b05877e15a0ce752e214bfe09b52c610ed83b7259dd8c12"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.58.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "820a7611f9ef069f980c5e08c567a24dda4e25f5f9df8ba2eae9a46f66340444"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
