class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.8.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "dcbbe788308f53126375436fea685a25d4fd4d77126e65d00641248830821975"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.8.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7c10afb2538f938163da5eaf72eb7e8388fb85532aa3e93c7b148ffaa8971f0e"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.8.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3eff77f46cbf3f6b76184e4618041c59d8c6b1d7ed5a80cc1019818e59029ed3"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

