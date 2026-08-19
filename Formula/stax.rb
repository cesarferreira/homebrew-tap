class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.8/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bb7d37255a46e76796575da54845c5103a499519bf6c0e73b5d404986f4f8bb3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.8/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7bcec920b9354d9de4b675ae4f2c71b2288cf37a8c19567b99459d1f3e6cc6c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.8/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a885cb548ccc083288a3887f7173182a99a1f5ef4a7ee364c8c0ff908a5b1dd2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.8/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56eb9d25d627bbaa218a95f54b9f87ce0d36d496be6844b626dcac583968f05b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
