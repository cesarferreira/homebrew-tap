class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.121.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.121.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6af71c0de0aaa89eacaffe72da5ab5f4e0d3c107cf52632c234db008acc0b8a1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.121.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "51aea3ef4f74295c033ca11c7ac97d5e93ef9c76aed2d75dab12cf1108cc57d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.121.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07019feb7c80ea7a5bc916dcf357702433c83d1d3660da143894b7fc41a5d451"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.121.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1c572f1335c47f9f00f414781a685322677b5f18e30aadaa88f687781a8d85f"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
