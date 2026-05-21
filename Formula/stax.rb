class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.78.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1a8010fa0db28793749261d5f47c33c21a63299fd9e2ddaa8c2041039da55833"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "0bb9c69861ca181f6440b16a2a5af6ec4cca2ad6a9d35267fe4cb6212a98f40e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f5f320cc66296305e845ec82b45fc6b8911d01572beb29bc0c833ed1b177310"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d51602a2e44a4aecb70397172dae72c573948e92f603033d9f451a28e631c37"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
