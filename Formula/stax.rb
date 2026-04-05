class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.43.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "83a32f03f94fdfead88fc7f5b97c49f885f6962fafcf67aacd8de6976237ef70"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.43.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "0d3ecf179ec4bcac4e64a727056c3ca089cdc24cb72d3cda3b9dbed99d3ead05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.43.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6a46cd4ba8fca144897ce07a7040bfa0cc8462eb86b8d6c925612981b1bd82d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.43.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c0489b9983d62a2a31848a7a8d6f49986fb8b5d391b787267cecb588614411c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
