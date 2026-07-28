class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.101.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "077a223c3a5114944d4c8fd0f506e87440617da0eeac3eda0129537133e36f03"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "116bf8cc998a82958c96c3164e683eb2c6036141a89484566b94d755a4c19437"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1e76be9460de3a4e70fe094ad8422d9719b4dda2617f38c9db6af906d39bdf7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17b6fd74df72a3f5dc7079153330b3c705ee5a03f42825068bb40a737724d169"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
