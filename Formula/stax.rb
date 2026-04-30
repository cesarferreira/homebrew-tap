class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.65.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "adda49b4b6465a711b0580617edb8a916b1ed0331283d3f9073006c978e20d64"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "01aa03ccfa41638a9e28364348481d4fdbdb053a9d065fb753f165047399b4cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce1fadeed20a68b2aee989621e06fe9fb76d04ba743fa227561ab97379bf9b76"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "947fc49467edac5f6def60f2625b7a928d630bdf05d9e870584c2b61eb3e680d"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
