class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.115.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.115.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "13f7e5e2b52fd64f3d46edb529d2c3885b005110a729de59b1ef51ef0ce58a9c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.115.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6736f779ecf2d4faab394cde11137f91c67f2bcd15f65e483e9b42b1def9c9e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.115.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44e30344478042df9386673c01df33b4ccec36f08d04d7ec43276da4c71da1c2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.115.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2cc881b2e2d602cd91bc81a65a084771dc600c61411601bffee13f5952fb692"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
