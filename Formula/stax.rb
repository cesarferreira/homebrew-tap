class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.102.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "08165275cb28f8fcd5c7a25eea8c004d86ed713e976bac69cb96bbfb82ee7449"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "504a5682e60c2f902df8f421f3f9a2b66672b9c6ddbe3eaf62a91a5b268e5e38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7536a5db9af6597e838b5462c9d7f803d49687cfa547de3209bedf4c3babd898"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.102.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bed674928c4974b45f265508bfbbb3659c470bfbd08f883152f2630b79e1ec37"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
