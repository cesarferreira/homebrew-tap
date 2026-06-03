class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.84.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "31fcd7b6eac4bd1d5559a754576539fcc9808043452e7c99e3fe30f0cb8015da"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "091b5a438b76a2c2a368051a1fb84d1b1ec585b68e7b8c8ce79a68911d08a411"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df88b51f091ffafdd652658bb99932a9a561db34ea485b99ce23645fe6513673"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b8c3791ef69f5cbfc7aa986ac24b0cd98cf0ca34acd54b4bf7240ac5b7ada79"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
