class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.25.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a86c2f3c514f96c217403620a5b00fd0b8dcbceb79b543d0bde9d25758286512"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.25.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "1ce91030f35a53b704d333e0f2e657499470d8e6c379c859c3f5993104daece2"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.25.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4053a77ced359ca86a44bdacd607c5e6b071f260a7f37f2d4de442980fb747f4"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

