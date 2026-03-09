class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "b7ac694cb434274e82e167d244e56a32fdc7a3edf1ee098939b76a8b55006ba5"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "825a38db024949c36d3126a69e04c3c73ab3ff1f4b03e65f1b21da52459d2613"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2972208ac75ced6e9379d28e323534f49abe95778f3eac6cd00dab91758d085d"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

