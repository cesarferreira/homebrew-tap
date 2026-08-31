class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.109.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.109.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "d699ff9e8225cf5cbd2a69604ee21d8fa4a0bb71b27f608930e6c6cbf4a6a716"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.109.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3f73b95175f53866702da4578f5493ed402c83f75794e3bc8c934c50d1f3662b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.109.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73f2be9e91917b75bed746ee3fd004397c6a1a16ae842162f7b2aa9d35b4ddfa"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.109.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "427d5a78a672738989b02aae99976914c8274075f098aa80ce39142806c9e515"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
