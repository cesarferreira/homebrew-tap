class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "13a663a98eae1c1f028aad21cd9d80867f1b265cde2df36337abe22bca7a9102"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2df2b8a2c5f0b7e0920a8bc949398ca21e8e903f52107500fb0ee9ab5d7cfea1"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1cb8f6f4417de87e467f7addc32df6d1b971e30ad86a94fda579820d8eec07c"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

