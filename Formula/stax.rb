class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.54.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "319e4c8e4e94cb43c3be1eab7213026aeaaa7ee36510b1218e0adf393f192e2f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.54.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "24f35a9af77eb3432c0e9c8403887ab56c4b35c3f55a6617491fb845982ac0a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.54.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb9648d77355a8e014bc3311aee9589d87014c1bc924b7fe034358682725a9b6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.54.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7a4c4c650e8ab64b4b44de8cd29bde52f2909db4ceaa9697fff9e7b23c93ee2"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
