class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.98.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "452b6dafb65980910263726a8fce8e6d063a862a783bbfdff1aaee3685457c94"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "fb73a9103c9588bde71b6969602b7ec535d4ce1060abf77859ba1e7ed9bf3d15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "463ca82c19a5e2a870e7cc0477ae3526dfa90ad6e2fc1d7a603bc93f5acae7d1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e93ca285ce8603e3accfc48602f41a267be1d6ef7ea198af91be0a4c91add45"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
