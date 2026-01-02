class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a4aa3006a727ad812c06b5440eb905f6db81134543ab72c836d91067bc6326aa"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "67aeb4d6ce62dce31b3bb88b7a14a056dd585d796c7698ca36df9e5ae3deb04e"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fb3d9c542c4642ff5452a76e84eb13a16e8f3a60bfe9819129f53175afc37d4d"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

