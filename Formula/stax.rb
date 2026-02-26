class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "43f2fc25a56a6d4b7211873bea0c5baab17ca46a807f836a0e24543c7b0c024f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.20.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "23becad421aff98c0e490bd8f78e1a8498047a5be25278f2f27eb10b8b9b7b04"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.20.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "de424c383e7559a82f85fbbfedd962a7b4e3145f9e5f09bc2f60d6c8a50738e1"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

