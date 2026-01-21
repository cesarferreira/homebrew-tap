class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "d08dc7b0ad599a725ef44d97b109b02762b2906ee5f295d53880221a96e2c74b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "cada8134cafcf72ba430d2be781170922d015d0e2dcf830a00bed61c8efc6195"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fb1f0f858a3bb05b113f2a580957df985cf84d668b020166010077eca4196168"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

