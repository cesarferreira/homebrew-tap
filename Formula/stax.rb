class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.5/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a291cce2d9f77b43f6ed37b0d79baf42fe34b15dc5d4b2b6235c1d1420edba82"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.5/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e274268a0d2fb22c638c1d8152f99794f4c41d2d94839acad412ed94d744e6a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.5/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56cfdb83481e53a839b4135ed0f5a6578a3e43624ccd875a19fe4b06b00b1a6c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.5/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1685f20be09671e89c3dcdd021d42be1f5180ae0d3da07e71f72b8cbea8af405"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
