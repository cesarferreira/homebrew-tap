class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.82.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.82.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1246a4ff5ad9dc0d3fc599936c34f4f758772521f2194b6e03de45def6020864"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.82.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "02facf364db982e5c9c3efc61697b3a54eecea8b9f2c9edf41b2eb8c1c9f9bd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.82.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33269b041f3b2576a125132a26a7f539974b7c71baf0446179bffb050cde1e78"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.82.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3160ecbd628571c762f13095a435be95ff4360535817c61965e1a3b5d38c167c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
