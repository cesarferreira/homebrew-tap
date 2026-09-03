class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.1/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "4f4376e877af3b13b23542b2cdfe6d30533e4563843aae3c5cf4badd14ca548f"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.1/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "989679738e1d200c62cae30319286adcc6cf97addd5addc5f32a9701c47dc1b3"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
