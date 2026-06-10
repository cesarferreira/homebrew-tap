class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.86.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "fdf70198b5c8f031bf96fef891427046ece0a781e70b829af5ca584554a86339"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "84a0e2bb7486f02408c2661fdf8ca43d6b08a819b2ad0727913468f1961ae06f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cf02d66e801f8c46f9bf769508acca685757d157014ee9bfdee771d26976720"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf08e80d4784e0c442985e8d20ccb8d116c17bcb4ba36dc048df9bd81598477e"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
