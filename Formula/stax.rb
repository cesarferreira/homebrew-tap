class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.8.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "209b7d0c98704af6319acb2d0df6abefab2e28d6b300a1be2212443e78cb6409"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.8.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "aa56714e8cee2c05c55462b27fc2acd32a2533e84a16f1936eea862a481d099e"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.8.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9904382dd4a2c8f7c1d31ad4c1413e7bbbea3d0e7c5e9d718e1ad818b413973e"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

