class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "042bb5a01722b39fb1086ff5d199441b8ce0255cd34da6905daffed227020160"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "90005b7d5e8e7ec928fd329f778fd0aaa2ae9ed3210ec3823ed70637ed78ebb2"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.9.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1cfcfb05c1375a6a3ac3d3d294b57c399f77cf5fd4b35d73835b5b10a082048a"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

