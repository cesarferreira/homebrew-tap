class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.81.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ac959431a2265a9cb2755c26dcd7e433f26e36c0fae202a291f804970ee3a47c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2fda9e4afae8373ea33a0e08e5c0ab5acdcfd2452eb7617bfe86b5e382daa35b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0db170f754cd52968b2a0fa26b3180a30d1ba93b8a02f98ddb222313854b7b8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca67bfb90cb2873002d70acfc79153c365f91d910f4f6cc1ad729a666f9d5c6c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
