class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.19.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e56a78a2574ffa6c2696bf6b59c02818a8fb097048a555208084a87108c082ad"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.19.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4586706a9a102dd89b35f2211bdc6b61c9a4743c6de7efab6ab23474c4060eb4"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.19.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "465d864ffd89f0a52fb1aa65b15044ce7d40ff1301148a64c5ba3e3dc149b848"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

