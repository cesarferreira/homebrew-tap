class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.89.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.89.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "9f1d380c1fb0eec011538ed9942bbe3f4195df5886e9e800d3ed7b59964b197a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.89.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ee7ec60e141e921254981e69ad4a337f7e13f8dac281f99f6b4f41232042000b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.89.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7a819bb9d4a426ecc1b3f3d20537dd709d8ea21084ac0ce83c95b01311f97a8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.89.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "792f1b8d6c0547e7667e29c5cb8a665e1aa342e93e1ed16064d599f48e30414d"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
