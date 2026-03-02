class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "08a6c27c3ef6ab78d982236c6047235bd8b0e522a8a43f46f709c3f4dbbb753c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.22.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "73966b67cb72e7cd72f3655d2df5a2eb3dcd18f1907b4a9e7303487651342800"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.22.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fd0207a3714e33c4ebf8c4d31973a15de782b21ffebd31d214d83e34daf78da7"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

