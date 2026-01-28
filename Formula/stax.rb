class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.6/stax-aarch64-apple-darwin.tar.gz"
      sha256 "958b404e7147590b968efd720e18ff02a11e69a758b33c857dd05e5d0236ab2c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.6/stax-x86_64-apple-darwin.tar.gz"
      sha256 "c39bb17e3cc2f913c1af0d29b93ed9a3ec9c02547810343a022c6cf92a64d689"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.6/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d53a75cfed7f97847b57794a842e06123ae0b3af13396e148823bd6b1275171"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

