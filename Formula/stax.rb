class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.96.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.7/stax-aarch64-apple-darwin.tar.gz"
      sha256 "97cb0870ab31f3cd9d128b51dcf054cf78a537716d48306af54cd487acecd01a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.7/stax-x86_64-apple-darwin.tar.gz"
      sha256 "a4ba7e7c27486ead84d3aa3a17f65916521d3bf86253512f2ff298c5b73fd40b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.7/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56a5926cf2c506cc60b19a470debf3838c1eec96818db49602a632e99e0f53b5"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.96.7/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e617837a133e842524908317c67b85288e730b6c83df58b28a75141b78b7a7f3"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
