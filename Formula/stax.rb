class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.107.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "5d195c5877a595fa9f020d82dd272fa4126becde00e06920ea5f76fa64dd18d3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "89e5b78984d1510e92d8b5d146290f3bb297ee9d192663d0462d8455be5dbab0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26fe6ec4b2cf6e6014e531995d9209542033629f5d7e8d09d8eb5eaf68dd609b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.107.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ddfee28441cefd585b1af990a2d981a1f4f3feaac99e1195a395cb390a598fb"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
