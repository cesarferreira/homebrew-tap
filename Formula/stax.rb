class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.6/stax-aarch64-apple-darwin.tar.gz"
      sha256 "915ae2f6f7d94b1c8b452b4624da8b47f09e4f01809b5a1a160d45fc4476be9e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.6/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e2f26d0c7ed08a991ef28e2340253c7755baf0add3b89ed061c453645593e5fd"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.6/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b58c909597d9cc364e6b68e15fb3e7c54530a617d7d5dd31d98dfb31ed0ee579"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

