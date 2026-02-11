class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.12.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6dca9290d1d116b23edb503678a66433edbc8d05cc8c966c793c934fb3f48be0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.12.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "58d1b2cdb40737c98473c4d1ac422f7c6efe498c32bbd810deffb4bd644fbbb4"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.12.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "234c2b2f71fe4c8c74355e893ab7751cb7f18bad9fbc60e8e6e2cb962ee2df22"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

