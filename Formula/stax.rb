class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "da7e48a6f54156bb95f7635908b5751d94304800d1116ae4a316593ac68f1e10"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "07a1d85af4d58421d69f811479c8f329d45524994759734a0c0a5de0bbb41f42"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea82494a6c9ffd0bc263bd7424f9c26633d948d5776b607d758980686a19e627"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

