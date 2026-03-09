class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ff7cd646d6d22632ec10b8e6e983e551b9e9a775928241377b50faaa809de779"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "517e64534b944d61574f63bb840dd684238c6a6c3d6b2c270e8761d2a38f2b38"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "55b8bcadd9ffd2f90875368dc85d8e29e356871d1ad859364c8a5d9e52b3e662"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

