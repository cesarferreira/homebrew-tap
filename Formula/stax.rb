class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.97.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e9f7dd758f06d5c09ff0278cd483bc18ccaa43bb7669d9f025b1ec3777169cdb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "9a86220e625117b98e7e4d03bff5144ca81524429a11b387c7fe0f3d2fc1d7ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6301c88b6351db038b2465bc994da9baad6090562c82657a68e7d1c10c5ac1bf"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5426f74ac36df3aec4cd796abb6051b0aeab408b3f78951d1157924afde8644b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
