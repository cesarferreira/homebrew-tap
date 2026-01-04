class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f58b92848cf7e995793a07b44a16395e91ac9989dc509b28fcb0f2d656df360f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "00864b5ccf5c18d0203e80fcfce2d3087b80f423acaf9a6b33a0e1d0d3f05900"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d91f2ccd0ba8b4ab8b96c064a3657d1ac27aa4843ddb6a9d39bc822954f0b8b0"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

