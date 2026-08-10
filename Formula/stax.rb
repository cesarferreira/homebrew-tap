class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "efca2da55b8b6ad4c47582f63f31c701052cdc97a98364a4b8196f6dde403780"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d129e8bd35c1991ef94121930ca02172e9c3cf49354d1dd4a0a808df76e40734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6aaa184527cc1bbb568b23e329a0b3bdcac6a2faf62914115021bd563dab9743"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfcc97fb83d01b717fad39f83a908ad9f7f7f79fdc94056c469cec4f5b1d3df9"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
