class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.4/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c9c782ed009001cfc73fb54be2e2b37b1dbed0aa00253774f2f607b97299218d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.4/stax-x86_64-apple-darwin.tar.gz"
      sha256 "93c88feb1af8b888683e540d607de9c64b309c5157638ad816b348333bb68a02"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.4/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6a1c5a43e0eff8fec4c02bfdf6db1a35317e2e86ab570add58471651cd590cb3"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

