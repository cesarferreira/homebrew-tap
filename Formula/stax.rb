class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.3/stax-aarch64-apple-darwin.tar.gz"
      sha256 "0f1361a52b9fa9bd764ddee89f86283a27a035d108b503bda7414e0ec33caaa3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.3/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ac2b5d71d69ba5cea05949c8903717ee00e0b342c7d99503446015dd5efaeba8"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.3/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9a8c637d57dbe60b9de9cc4d7a9c2b8fb1f8db28fac483e2387e14e7e01a329b"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

