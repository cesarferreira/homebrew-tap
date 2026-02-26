class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bdafe368867f991b282f87e6a6f5fc105c95039f2ad50ab4bdd7467333d55303"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "eb884c7cb51779265be40fe82fc364086324522aa3ed38dc6220a770b3d644e4"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.20.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aabda7e060ec42ca4cf34c5cee8afef0aa91b39cadeb0ce1a55b6e8dbfda247a"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

