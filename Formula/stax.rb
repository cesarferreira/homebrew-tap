class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.29.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.5/stax-aarch64-apple-darwin.tar.gz"
      sha256 "e219690306ad597c7263af751ccf09711d59cb3bf06ead3172c02122d0e769ee"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.29.5/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e051faaeaaff123ff0ff8aaab01801e8cd51603abde83a612198fc140cf83a7c"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.29.5/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e17f38d465f6c18215972d34cfbeb00875abd604ec7f8ffe709b5408a791c268"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

