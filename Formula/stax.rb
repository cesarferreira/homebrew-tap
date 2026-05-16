class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.74.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "cd869e4e633315f79c770eabe080b6729a6251731dc05904e47014d96ee9bfc2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "96de4c5760f6b39782025f6e33446f6c2d6a75d53901ed8920e16b452bb7d6f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7330f7a50a92f1c69c81f117353c82abc53e5a3ea69890c9dbb6bb39ab1f2bc"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.74.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55ebc5480e8ba37ba672aea1392e34565e0f228c385b5a9b25fe7217c13d2a9f"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
