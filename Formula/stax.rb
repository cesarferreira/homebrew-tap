class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.61.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.61.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "10a49f25b2b11bf190b9646d04a65a1e8919362e6cac39f3419134dd626c3b4d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.61.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "a9751d1de98bb90c82e6068421ba92795bfbddc5cd5350a024c1c42aa4804f12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.61.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6fc87e40e969e64ea65dfad4a9f4a4b8dc606544aac7d534ecf19522ca7beb2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.61.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f5a27ec5953bf8566bbec4c546c51bbb28e0db7da641354faa77928b5ff2f6a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
