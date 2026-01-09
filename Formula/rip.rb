class Rip < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/cesarferreira/rip"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/rip/releases/download/v0.5.0/rip-aarch64-apple-darwin.tar.gz"
      sha256 "c33f600395f9c534a089477d789e86fe7ec74519f53bed347d1bba9ade8c756c"
    end
    on_intel do
      url "https://github.com/cesarferreira/rip/releases/download/v0.5.0/rip-x86_64-apple-darwin.tar.gz"
      sha256 "4b2a051285aa1905fc75031d29bb66a8bc07b131e703eaceb6cfe04921c1f9c3"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    system "#{bin}/rip", "--help"
  end
end
