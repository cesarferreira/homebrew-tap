class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.36.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "02bd952f619499db05c6e5c3ff3177b1ca7a502e6475a035ba49a00454e9771f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.36.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4b96f4785bb70f794c74fe02c7a6003c8f93faca8557171ed1f0ddb7b16017c3"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.36.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aa83d55e2324e40fda3f606d4192e849d986f95506dcdf5f209fbf7fe42ded15"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

