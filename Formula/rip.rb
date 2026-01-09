class Rip < Formula
  desc "Fuzzy find and kill processes from your terminal"
  homepage "https://github.com/cesarferreira/rip"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/rip/releases/download/v0.4.3/rip-aarch64-apple-darwin.tar.gz"
      sha256 "200bd9d9b8cbf49af3ac604178ec5fcbe0c3fff6fb0dd913c12ff35854223a8e"
    end
    on_intel do
      url "https://github.com/cesarferreira/rip/releases/download/v0.4.3/rip-x86_64-apple-darwin.tar.gz"
      sha256 "2ef06fe56da64bac5d1d9f1d66659d72970131ac7ad09e61313e242f511be3a4"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    system "#{bin}/rip", "--help"
  end
end
