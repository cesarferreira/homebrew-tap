class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.20.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b54d40cee95f27554a320536e02fc35046eab5d89f05751fdd221e252abd58f5"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "5b560c4b4e27f0bdc61cafc395cc05225eb4a3c8f84001ec6226a81ffa9e8476"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.20.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b548336de4941c00c925170712e5caaaee0793a1a0074ac0bc1b3b9a5873a3d7"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

