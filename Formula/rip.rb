class Rip < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/cesarferreira/rip"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/rip/releases/download/v0.4.2/rip-aarch64-apple-darwin.tar.gz"
      sha256 "6dff31a102f7c9022d0a626e9f638632b664f36a466b47e846397697d765a86d"
    end
    on_intel do
      url "https://github.com/cesarferreira/rip/releases/download/v0.4.2/rip-x86_64-apple-darwin.tar.gz"
      sha256 "af0fdfd1b7dfa5b01e4eccea4bf35fbc55a5747f35980c6ec081b04cb9a1d1c5"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    system "#{bin}/rip", "--help"
  end
end
