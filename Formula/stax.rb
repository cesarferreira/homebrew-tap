class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.87.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "20e23a4424914fef528623d4a0dbf968dd385fa1d1f8c2fdefb0c0aee76e2866"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7a0220f20ffc11c7500803e624e804baaf0aa48436b3deff3210938a28be480c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21affdf2ebfe9c08903c76e1751c0c6cf7e273f864b7decf5c5b4e26cd2af708"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edcdf576773c68b9bd6bb631a2f891db60e75306aefffcf7fa4faed60feb2c5c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
