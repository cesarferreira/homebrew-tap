class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.64.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.64.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f8423b8704ea4c8b45c523e2f86e3ebc411dceca5b6a98795af5d1c3313977ee"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.64.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "077f34ef0917f47ba2facc80eff62151e824a534bc21974c3613dcd2bb504902"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.64.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "074b46d66529edc04250d779c5ea4a087f99f173f51c8d2c3b9cddc76bff2e1e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.64.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa579a93cb3ac90509fdb359d221aae90c0b11098745d051ebdfd9ac15f432e6"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
