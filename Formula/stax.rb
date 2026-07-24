class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.98.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "86127765f82f83e459fd91a23699f7e01a8979793386402aa8a1b68ae142da81"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "788fa964bfd3d47206f9ab2a2151ca515a1d93a24ef5aa478136271e79a874c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a0ad537d678ef108dc82597345b8f3767ea293c79cb51067860943c52a5c461"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.98.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "609e29bd8a4e05acf564c3ebfec12a6879c89dfdf191c12cc8712708c2e628b7"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
