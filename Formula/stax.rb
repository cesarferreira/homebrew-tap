class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.110.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.110.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "7556113a0f71c0e78786bf7460f17bdace08f9a5d6086386684d610148a6c3cb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.110.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b20d8a212ba058054e755b87356b74d426acb1a915c2b83b9c5f8d9d4697be7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.110.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e11d09071c64c358574266af3fb782952adcfd9d80bcb4660fffe11d02e575dd"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.110.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4fd0692fd8a8456be1ab11a7b3f0bea639bc9bd5a903b360f2b4b14070865df"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
