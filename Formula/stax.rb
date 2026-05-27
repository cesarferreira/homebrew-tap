class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.81.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "5296e715028cdb0b619681e42f719608af871a01ae81b90d6e7d3fe53da61ee4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "40e9bf723a3546642ff2653a13b0ee238907aab60474be5132161ed5a6c15b57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d59827be09ead2eed8ae6a352c89342809f524a72cb36f67a6087cd600cb23cc"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.81.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39e45adb5647eb48a2fb74ce54f132639b26d0668ff6b6d7977f7b8294e3a50e"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
