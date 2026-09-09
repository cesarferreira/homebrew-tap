class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.3/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "31fd2d26c6c1eed5c816c489ff298346fbfb5f538256b6202be3ed1b5ee1675e"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.3/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "6d777f1756683643c5d9d653afd4f9b7751e21e9879c26429277c7514d8c160d"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
