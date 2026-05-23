class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.80.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.80.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1c4dfad8a19d8c4c9e841c3be2d892cc711f8d80cce4dbdcb72004f860cbf55e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.80.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "03e3f5bbd2476f04fb4f9a66077f9c2905b919048a3bb2576fcec5dbdec7095d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.80.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11c58a28ab714fd4c26bde9bbc997170510e903f996464e36ae91f64954bd4f1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.80.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6929307eae4a5bc6fde7d134ae321ebb81a9169692227d756fc65663b0c3006e"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
