class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.6.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "258ecb0c2d5a264b3b004a6ed69e69aa85913f90f004290997b643afdbb36dd9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.6.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2c88102d0dc975f1c8b0f2044d29fbf8e23e9908a0e9a999a5c50f43aa2f60b6"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.6.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "276c55c5884c7d2e36b829295b0903ceb858448b6ee08df28683c77e5aaeea62"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

