class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.4/stax-aarch64-apple-darwin.tar.gz"
      sha256 "c744d089e0fc9d760d8ae9932a8938e810b94361be29a47dcb07e5048cf8be91"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.4/stax-x86_64-apple-darwin.tar.gz"
      sha256 "aefc4a19160e622562f80693899ebc73fcf0ed26be255a85603b7a9dba6c3d13"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.4/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "893370f734ba6308b3a42f5e70c5fd7258c8747826647e0af5aab3b975dc5a94"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

