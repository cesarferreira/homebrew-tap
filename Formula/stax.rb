class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.12.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f36bc50242d2f0d600711abfeae51622714de898860c0e566eb849ac76b29d51"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.12.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "22fe658925cf3b46c37108e1079f9c6b0273444b8ce6c2131c83e6b72a69e169"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.12.2/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f2b4454622e1d48613ffae525f5780342cc50cb47e633f154941eecd2fa2e76"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

