class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.52.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e76083883e0a485aecb562db4c233a68d02e34264848e20246348d2f82373536"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.52.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "130fb1431012a3cdb21660df1a89533729c13a853a1b45f3102216eb01f48e00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.52.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "647b73a07d45748dc10b1553a90e45030e1c2a8a30acf8b294b0e0ee3546a745"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.52.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f86deb1b4b438848760e1c806e4b254ecf2bec115be08e5f3d8833af466f1740"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
