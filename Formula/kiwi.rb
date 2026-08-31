class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.3.1/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "30363fda0bba196eea0397a0067b533dbd49c0bcd65ac77e6b89ee85f22d9647"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.3.1/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "2825e35eafdf85c7d665065c227951edf65314d3bafcb194d3fd330665a579fb"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
