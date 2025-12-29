class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.4.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a02b8ccabe79913ae41d52e95fec4f9f5c3401aa61c47d39a1015ca8afe1a0e6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.4.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "edeb2747990659933eec42adfbe696839769d95a69fb06de69166d9d4a98387b"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.4.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ee6af7a6d28093133f5279c294b15ce6ca556aa2f56cc6a9907e404517b0e99"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

