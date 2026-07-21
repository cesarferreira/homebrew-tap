class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.97.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "814d49bcbb162a8656ea1bc67856e3558b76de197b181a9a9e339dccadc4815d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4a67bdecc8f981d64c5f27b992ac118d9198e629827d4efe6a3d0cac2ce82cce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e475d9d0aa3ffe80733621eac49a61fcb5ff0c8e903f69b185e7bb0eb67b3b7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.97.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f27f8f68eb2411068d74b72434ff95fc3eed587afc5609810075f057b8cfc2c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
