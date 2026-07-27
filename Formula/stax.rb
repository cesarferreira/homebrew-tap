class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.100.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.100.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "114370c0d4930f6301e37d48f5823c0b4716977ad67803ca5f9841bc6b29b75c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.100.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "f219f5dd2284fca0b9679afaf8336ad31018986a73bcdfe077d5091b3ac4a2bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.100.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d237de2da1407f5c7ac10dbbc017328665cf58fe7b06c7ab8ba2ebd1f6675f1e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.100.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7402047324d42e7b9a2b392008ce422fc28afac24b4831a5d86fa5f845a438a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
