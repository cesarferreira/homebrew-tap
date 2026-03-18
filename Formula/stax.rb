class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.32.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "80353dd1d5fb762e9b06bd371ad269367992643a45e011a2cb0b789d204f65f2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.32.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "447e1c694ad1d3f32cacf7e19241ebe72fafd4ca3f1268bdf4abec19c96196e5"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.32.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "887b4486a676a3d0df32b9d48d2c719aefb275382ec2eb6c7605789f9578a132"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

