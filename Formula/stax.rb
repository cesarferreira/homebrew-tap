class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.8/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e83379687670013f64fc00b67bd0e93689456ad8d7e80e4a06b4b9cf1debd68f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.8/stax-x86_64-apple-darwin.tar.gz"
      sha256 "a6dd5d8b99350e46e068fe75487404c7d340edbbcffcc6b61e7d18adcc9c8e7c"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.8/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3f7cfaaff321fc674db2c425e8ce01cf0d4ea6b2d324b2388347f699ccb628e"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

