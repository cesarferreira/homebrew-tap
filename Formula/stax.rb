class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "85115976fdeb4803f7bbb87dedacaabfd61442b9f544cea5e2f0f223df827e9c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3af3902e901b9669bdc157f94af7b9943b89389dff5ec8aeb84f214016392223"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.9.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "67688d63bc7c203a3128c088ee4168e23701f7ba674fa27fdb38a82c9d3d5044"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

