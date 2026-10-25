class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.118.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e6c36ba6a8735028ffe7a4a190911e924b36c4b4ebe12ce7aaf736b940ec88c0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "7c2c2c9b7bda090758a29272414ab10afb273555cd09a0e2ae6ee3f43d404a93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51cbae9967d5353a8f45375ee92c9f83e05ce04a30ae731dff17f15e0f638d9b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.118.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "616b77340ccd63d2fb7941572ac17d9a5e7031d5421ccc967dea5122378ec4df"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
