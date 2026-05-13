class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.71.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b77b3cc4619a6c1c2dd4ffc391c332b045a6bd958a94e37eff64beae3c78e262"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "34bb5fb24fa8f64f7cc4c52c6c3c453453cb90598382332a336eb6e3c87772a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9571c0e643ced5e0692e16529c5c2fdf8dff016ae7e67c8a90412b83b35648b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9afa5274c278a3c6c62fe79011590d03e9deb7a01d03676a091e783cba36063d"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
