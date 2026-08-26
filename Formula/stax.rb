class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.106.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.106.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e23c080c61b0f3930fde7ae359aca22e8856053ffeb95d3910713f35138938f0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.106.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "8829340122cda02b909cb428ec6e13e56dfe478dca5fde123be6888f19485d7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.106.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58ad013c907835550cba46a1e8fc08a3ac24f324b2acd246ff1ef052aae0a7f0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.106.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1512103189889e00be0124645a64c9883c29626120f4a5990409de0ac31df407"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
