class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.63.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.63.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4a9b973463be695410ee5654414aaa6ef281c05671908d7f1236e88406a8bf5c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.63.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "64dce87cb45e64aee2d20f2dc706e1cf13f98c3ff7f577dde858fa4d61678b65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.63.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea30078ee0f3b5515796d465e47e8ca34bc6d656e9302fb523827fc5cf2a4664"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.63.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b318d1d1a915cdb3bda3b84551f83e49e09344a75efe5d48a29812dd308fea4"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
