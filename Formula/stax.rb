class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.71.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6481f1b1acc9044464ab02584e9ec86326c56ae1ea3491bde9e686eb68d4ea38"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d711b6ca8504614d8ecc6a5e04d723791219bd51641021a22cd77af06904cd19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "506afb3bd4fdd235bd59e82ff109888cfeeac44a15b77e86d8bbffff621366ad"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.71.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d05b926decd653a46118a2913a22b0443c3124616ad3e19b53473bf6254a1dfd"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
