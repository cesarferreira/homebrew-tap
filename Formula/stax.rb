class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.91.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4d068bd1a24a9a6278509f45a65b412e6f087927fbf8da0fd5ad218f7e782e4f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b914de3f8c9b5b53b2ac27b45b2a6cb04c76c6bc966b010c4def9953fc7e51d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19e46dc8959a7939e3d57ab5550b9c1e474a5e3d1114071a7f32207c1c0ca7e4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f92f16bb50c1422446590964194eda32f1a1e4025671374ddc66bd0e30ba268a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
