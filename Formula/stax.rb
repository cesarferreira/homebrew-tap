class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.11.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6c0f8a0f6a4e99a8038101503442aa799bb973c14a2ac7ecd7f4ecb08ad92ed6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.11.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d07f41b81e8009ec8301a8e545634aae1eee6f84206fba10a3d24988bb355d26"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.11.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f563f418225bf995b591d34804f8b849a21c5ba694b6042a49071c6e612b946"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

