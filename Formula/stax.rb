class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.108.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.108.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b6dd7140988a0ae86be1e4b999b9b6c1cae814dc50d6c9889cfa957b7918bbf4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.108.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d4f189b3f4392be07382d4e21ae543c46a5b39ac6a0c018e3da47184a52c3b9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.108.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3702ed7f6014beb6c1c1655223d4d85feff37350fa5f999dff1d168ab46795f7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.108.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0df1fed03fe5bc81666b67533078ee3acee47c11ced4482048b017307c5ecdbf"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
