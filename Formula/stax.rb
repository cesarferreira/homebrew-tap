class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.69.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "82059f00122844d2c7d1ea70e9f916a96d54e6a0db478cba1b733c69316f8375"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e485cab964da1acdb59cd4c15b4b065a9b74930fb967662c64d6dc3004187d3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a42c1728ef950169e48b7c81785b1743461ab12cb0963de48ee9113b99ea4ce"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd91f968b7ba88e1778c27467b1b9cbca5599f521fa7405621bad8fa084922cf"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
