class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.120.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.120.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "5ca23c608f5cb01f0a3090adb1a814151a138dd04d3bf755b195db455803655f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.120.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2ba38935d8729e5cbf88d5618df5a6f0796ee0defaa60a6321f9d106a3708037"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.120.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe0342c297676a07b46943fef88b408f6dab8b643f2a25755948769cab146a79"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.120.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8c094c411557c1171cd6dd76a80c9493e0853abe07492c942a68ffc56cc2e73"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
