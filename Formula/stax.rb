class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.94.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.94.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "95fdb99346095298623f937668866e356a0df7ad36c27e367fb22dc8462a4a38"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.94.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7226cc8196eff2698a888b6627a661e7390a4f526589367b4374a9d0759c6efb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.94.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20fca0602f74042386f83a0f70d7bf6643aef21f09272e3248d57a9d101272c3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.94.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f2ffbd78c733b2127cba480aa58a2b20d2c6803dc375bdc1988f10bebfa4e6c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
