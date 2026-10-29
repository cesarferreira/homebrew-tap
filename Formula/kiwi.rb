class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.5.0/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "3f7c0411b4398f067000dfe5a388883516929f7f4631add7c47a3f9ff2804f67"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.5.0/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "55a0bf2fcdd146c071c64408df52f4e17551f6e5ffca64a61b33946583a0dac0"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
