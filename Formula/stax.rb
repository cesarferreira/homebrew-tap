class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.25.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "92e6bc20bc5fe4f9e16b4774c6d5bceaee280eb9acebe662c09708860c976b9b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.25.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "28c15b245d2bc3c3830febd249145940aec4d754dab9d09129bb7ea191230fdd"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.25.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "781e2ea06fc395e12ea6855cfc49749665e72a07c67e3746b2b967f0a19097dd"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

