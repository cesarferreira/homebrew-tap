class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "3c587c97d873a773da688e53a9ef380bfdae3f926f34a1855130ad0381de3e68"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "62381a89373c81aa3300b731ea843243ae817606d51676a7bd5f0a2522b09cf9"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.22.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f53661e8000a9cc4a5eb7de42164240d9310f850747913bea5f754a7f60dd2ec"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

