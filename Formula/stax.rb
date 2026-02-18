class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.15.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ceda17808fd037cdfcacbd1c63ace762e276e403f35b07a01ecea59ca87f6777"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.15.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "af62ec20052177828acb555cbeb3331db31c14712628503e1efb0718d273ebc0"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.15.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2fdf9a92ac3f426f03b3ae50513512bf2746fd69390377745dc0df9d18a976a6"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

