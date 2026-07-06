class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.93.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "baa24657dd7ea58dd63d210127e705ebcfa4a6ecfd55972e107774604ee22751"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "161f317ce6bd991fa0456b8d2a6a2c8a5f33cf76590a3a2d8a69c76450fcb413"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2782773cb15ffa69aa45d3f9f9177ee19cf93823e7f4c75272c0cf60f955a4e3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.93.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5e7fe4bedcfc9c55215c0e8fa396d1f5ff9bc4e1c9d4c3405dfb44028231cce"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
