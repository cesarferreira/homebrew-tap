class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.21.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "7c34a9e4db4c5e30635566d196ca922bf52583a2659313c8fd72e15ed376adeb"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.21.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3701e6de69fabaa98123fae2980a1d9df7b04e790bd2dff60cfc5b5cf65d8773"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.21.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b233384c7c3ad3a9a5c5b189b0c2a2a5cc43102d363d96c7f0fad4a1bedc6fff"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

