class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.66.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "625f6c25adda40f80b33e87a6ac91a036b38b4085433c085eefd897123bf9efa"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4d1792bbc93aba95e992823dc132562153e92c28ad8d8c787d87d6bd5f97c6c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ac9fe8c9b2378c561336404c818c2205e0c18c509641305c8897807d6bb7be4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb4069989c83d15cc8886b1f19760be8f4b7e401b712c6e455a628de8222189d"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
