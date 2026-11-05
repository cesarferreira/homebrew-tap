class Snap < Formula
  desc "Fast, minimal macOS window manipulation from the terminal"
  homepage "https://github.com/cesarferreira/snap"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/snap/releases/download/v0.6.1/snap-aarch64-apple-darwin.tar.gz"
      sha256 "995e3f1e93d2fb4d9be88f2b47f794261237359c601804f5099777e6bf1710ed"
    end
    on_intel do
      url "https://github.com/cesarferreira/snap/releases/download/v0.6.1/snap-x86_64-apple-darwin.tar.gz"
      sha256 "b2f81f6eccf0d885990bde86098cc7b137b8711850b7020c1c762eafd0dec5cb"
    end
  end

  def install
    bin.install "snap"
  end

  test do
    assert_match "snap", shell_output("#{bin}/snap --version")
  end
end
