class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "3dc6aa4ecc8d10a93e0db56cbf87ca74f4f6814a969bcb1cf30525acbac29af0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "55811ae1a51509799eb5797ed9d07dd2de7eb469b2f4523132b9e23102e406ec"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73c720e45b1168e8f9840c8b6b10d15e3425b0167f3a7fa2f17e71f7a7c8f7cc"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

