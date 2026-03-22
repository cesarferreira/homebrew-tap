class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.33.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b191659d2a1e1942cffb325388e33b5048cfdc96298de228a8bbb744cd207b82"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.33.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "a5e96d5f43ec0aa650b4c83262e1da18a51da5aa7dad52cba2b947bd2297a8a8"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.33.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20dce974b3fb2b4c408db4a3ea9d171a534541fd66276768a43d7f41c7c9d4c2"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

