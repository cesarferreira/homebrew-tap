class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.91.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c8108ec1691af8a841d14c8aabd2480275d8df7b970ee256a49342aa7720d365"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "85c508d15ce91ee8cb5e754d04e005afa8d17297a58d2f62228150cf64af228c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d0f1a827369d963db85aca85af39cc16c1f7ba3c16b57d137e3059262997e97"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "327b4369f340a8c2ab2fa7049a303098abd7e75c3c2aef0cab214f6b6c85032b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
