class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.68.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.68.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1b68b606fcb22cb40f5421b446c2930a3408987ac292a41747ac03d2ca43a6c9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.68.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4ce825e813146c4b4a9a31a149cdad57b681e0d06e2f709cb7593f5ca00b66ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.68.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c3173554cedee13b39ec9f26074514c9de9a35bcf5e3eb346ec1f6342a1bd4e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.68.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2ec603c4f658a97438ae29abe80c3d95b778e5dc4c614e17753e21b4eff4de4"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
