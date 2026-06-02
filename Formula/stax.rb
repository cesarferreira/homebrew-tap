class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.84.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "859d730407661256b182449c11b1bf5177d4bc944abde73d5247312356380c94"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ead8ae7b3b246eeae2c273deff4314a8cfc60db35c0f8e3c5c66e718ef5bd421"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eac074d88a6fa9debf70927f5f3876da6bdfb1ad4d72a1ca519cb61a0fec929d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.84.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "073e47fe2875a1899b1b4f0ed776dbb2496aaebd22bc67b321717fa9feb261aa"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
