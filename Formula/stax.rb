class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.34.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "30a7543ab39f92959fd418240726c42e63d6bbcf3dc88d11eb10129be82efc1d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.34.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ac3330314da50db460669397c68d1522dacdd0dc09134e1c21cade6546e39079"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.34.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf2da21ac3e1fda6f171b4fc55dd01439ef876208852d72092f164cbdbc80404"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

