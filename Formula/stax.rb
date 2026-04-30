class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.65.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e503802fb1ec4ceab0a9f1dbebc681e103bb5e5a079918f1b8a1211ec1f371ae"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "c5649dbe0d6f04969c86b59ed0db9a7ffff0747b1e22fe85350af144e512d111"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f3f259a96ecab02ee4797d4d19ff1e8498f58a94a8d54207cafbceff38f6d94"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.65.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf41715188f7a53ea54cc37c8964864ebe1c2a35c52851820f77d7141181e9f8"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
