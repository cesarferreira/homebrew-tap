class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.53.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.53.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6924360461a9b0a27a7f4d822a5299ad065bbc7929e020df8006e153a356661d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.53.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "39ed99eb4549477212a4ae83b60f24b690a83cf130be0e6a1306feedf972481c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.53.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc21d6ee34b3b6b85e395f1489057b344b571949153708d1a266e76453db0337"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.53.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac30fec0b4650f0eb0410ae5a45e9c51cbe82c06b0ed33d258b49cdb9b2f2aad"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
