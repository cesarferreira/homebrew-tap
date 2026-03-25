class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.35.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "fdb112d0833331065306d51b160d60421a562905cfb9710fe0e76ba6348f07f9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.35.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "dd0c6afda4d1092ae58a85138e59e0db141dc2fc34add938656adcc64cd3cf08"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.35.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9378ec8ef8d7da0507eb82fa9964c186636ba289953df68d557c1ad5323c664a"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

