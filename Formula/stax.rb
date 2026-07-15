class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.96.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.5/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bc87e50a3879821a943e2162b0cf1d3ec7c32f7e2e31172bef543cb800581117"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.5/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6493b6abae1c0c71fe7766e195de6e09328bb21c32e42e49e5068ce27c3d1fea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.5/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d37388070501e79057efc9ee0adb727e20e23327b88673922562a3cf304c88dd"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.5/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "929b03e499860e6c3de49205a822c90da0cbde4a84b4d6af5d8bc48ce1ecd054"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
