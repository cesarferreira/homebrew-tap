class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "9388a33a95b21e80467ee0b7184f964d86530805f219810769dfc4c562a94aeb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ff10dc07c5414ef21ebe1cdc0c6467f5677896f5f523243754ea6b8a6a5d6cea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78b47359ef3b8962ea6e94a58412d04e50a8db4cccbf71a840ec8a029ebfd861"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b068871aec54fdf7f9bc8b02fc4993a8669df45e49de844e886dff5509a9202"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
