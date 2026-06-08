class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.86.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b7048a0f9be2d84c24fb4baa305212ef18857d096f273402bf3e92d5a6d8f980"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "29e4accf58fe0f90b387a6ec58dc72bece6ce6d1092c41c6550463694ca9a80d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf2ecf9c1deedd391e6538214cff696cc312728afbe1a2517a2b8a71586fa3a9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4f7a2d8ba4e2b3efe357d81251f7e5f68a6d6c8e534267df1cd6ebf7e85bad4"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
