class Rip < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/cesarferreira/rip"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/rip/releases/download/v0.6.0/rip-aarch64-apple-darwin.tar.gz"
      sha256 "86b24a607f041d154b13caa3b6c6c6be05cc102582dd276792fd019d8a4c6717"
    end
    on_intel do
      url "https://github.com/cesarferreira/rip/releases/download/v0.6.0/rip-x86_64-apple-darwin.tar.gz"
      sha256 "3bf0b3be79333efe4b862dd85fe0c37825a7e152d71f2b197cb62f388aea51d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cesarferreira/rip/releases/download/v0.6.0/rip-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9abbe6e518df63ae600ae1d3f9c0c0e61dc22b173906023f6681789927aef4bc"
    end
    on_intel do
      url "https://github.com/cesarferreira/rip/releases/download/v0.6.0/rip-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "879c021c0ee460311c6949e11b53e7994d6c91abc3c9e813292011f784104b17"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    system "#{bin}/rip", "--help"
  end
end
