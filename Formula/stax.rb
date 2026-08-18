class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.7/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4d98a49134f453841af1edbc904182db10cd1a4a2dd632f01241115114736f43"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.7/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3c5c87c56a28dc055a3ef9ef7fcd742aa8294bae3371afcfdce9e2fa2cf5f7c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.7/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47abecf4f3f75fc5e246b3ea53f2b7d184b4c97019a978fada2390cb89c577ca"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.7/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b29521a87081469eb0ef46109c584bf1fcb422b95083bca19738fda0c8530e29"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
