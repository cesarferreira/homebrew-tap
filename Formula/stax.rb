class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.69.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "869b8de1b7bca0a69e4b13e48caf6ee601a824214951b10c7608421f6c5f3c29"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ef60ae63e1124008b2730a61ba2cdf463580ebeaeae02548ffa43e6c42b420bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d835f367b6218ef5f12d596f450b0756b65f242e92fef038881a764cb4c73b7a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.69.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a4e8ea959c8b0a5ab468c2df7c2355f332372c3cee3f7cb97d3215fae9356d2"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
