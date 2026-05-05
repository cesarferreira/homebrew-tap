class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.67.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "7a7f5ad9a4455fe69be6bef0d4a070fcb0f7d4d98e75e7ab7675b291358e4109"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2b55e53c8ca3679236ec3c85eff413be7baba074502f827f03344efb6898e1e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c07373cf17ac88c636e41f712b678754204cc7b7a7ddb1bc6d8b25f0e3d2089"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.67.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd748f70681dbfa95405946d21a83069aeccfa12fb4e13e70ce444c41f3b964b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
