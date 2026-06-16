class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.87.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "48e22fc9c7b2c833a0d78ade64c44d1fc4ac7ce0071edc764147bc2451e1f119"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "f63b4cecdddfce1a54d6ab8b88e0915334a1f2398ef34a9c42560147ea8e31ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04b36d3708b2bf54baa4be3d3213f6c97b974520282d7510ca7473c29e34641a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.87.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04365f61dfca6ff05ed284ee0958c70a53d0ca20032c2ca5fcc3b38ce8689069"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
