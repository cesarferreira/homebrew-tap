class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.3/stax-aarch64-apple-darwin.tar.gz"
      sha256 "5112f9d2a32db989b0cab1d2ba18247cb830fd8b719570b32b16684f542c5a3e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.3/stax-x86_64-apple-darwin.tar.gz"
      sha256 "60532f56d5f06335d40447a1e1ae15eaf53587ae2213048672de51cdf4fe45ef"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.3/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7281555bbfae8289f86c328f98f3d7762f03b8c08f0d29b588608bb08b3cab98"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

