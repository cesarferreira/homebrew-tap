class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "edbb2aacd02c7be82a79ed1b8a81b9679eef44db7a3621bb89f5a047ad122eec"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "59e33cc66156d3209a9df4596857c25da362e9b6620f15c2567a0823ea9d6aa8"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9fe520ba8a0f179b58703ca25ecf9f5095b8fb0bc30fbd3c5c8c541beacee0e5"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

