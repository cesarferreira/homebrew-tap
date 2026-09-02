class Snap < Formula
  desc "Fast, minimal macOS window manipulation from the terminal"
  homepage "https://github.com/cesarferreira/snap"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/snap/releases/download/v0.3.0/snap-aarch64-apple-darwin.tar.gz"
      sha256 "b73c2dee3bcc82008f8e6ee1e7a32efcc70bcf4b80605b477968756d3c10d2eb"
    end
    on_intel do
      url "https://github.com/cesarferreira/snap/releases/download/v0.3.0/snap-x86_64-apple-darwin.tar.gz"
      sha256 "1f3fa8279da67782b824af73ed04305d3b38bc42bb715cdd1babdf3e691d57a5"
    end
  end

  def install
    bin.install "snap"
  end

  test do
    assert_match "snap", shell_output("#{bin}/snap --version")
  end
end
