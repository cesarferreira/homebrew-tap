class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.7/stax-aarch64-apple-darwin.tar.gz"
      sha256 "66bbd45fac111598cb9f966d58d70b38bcb56c9b97c6eb4dd64e060fcd77d80d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.7/stax-x86_64-apple-darwin.tar.gz"
      sha256 "da6adc193df235010311d7da230872fba8cf9e9f2341d11f11ceb6388b3ef6ff"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.7/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a27287f034504ead97e63794c96d652b41e6872401dd37987edefa3f315086d8"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

