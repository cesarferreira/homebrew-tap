class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.112.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.112.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1b20a9c92f8b8dd08515e8e32b0762fb77171ddf59762f98d6ffc4b7bf130299"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.112.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6525a0005e104196dc978e0e4c836e4cca3cc24b2c66ccd2c42b76b9f336319f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.112.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91b56162c8ebaa1be0a88431dbd19b1348bb798ea606560197b29ec3e088c0c7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.112.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c76079662371cc99a3d337d9e121df823beaa353b5310937210647d67f5b511e"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
