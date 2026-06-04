class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.85.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "30d62348a39138337a7f1b4d08c59ce7051295bb20c744f0f77be7dcf6b3428f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b95dd279d159a899a5447a0b463f40b10c334dfdf06dab7e1df96a100ee200f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d00a9eeb935bede2090f3a803c46adcc7909761c2e78b707226c4a0d811d4988"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88da5748381b2c5ee540c0bb0237939476eda367b350b525a6f6096790b8bc18"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
