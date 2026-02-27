class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.21.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "0e0298f1a24a69ef507ea367982fb12175033e99baad5d0114c640d0a343ae71"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.21.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "21f2cd7262965de6cc418b3d69b69c97d06665cf63024037c33be1e58d3bc287"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.21.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ae34e9573aa6f96fe45112e8a6d51dabe62db6712ac460066e16664aef84442c"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

