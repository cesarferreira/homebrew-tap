class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.46.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "78c65ee3296e67953dff026b2bfe5e6efb07aa261efcfb43fc739d2b7ab14632"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.46.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e0dd2d9a44873faccdb38d6c0c3ef2d20164d7a00d94dbd60d358f6204c5b818"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.46.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d64f45b014dd0523b7d2902cbebf0474c743c6be0ce94d0b4e424590985b03c4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.46.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ae38151c6193f8e68ed61ed7d07080d2527cd25731133c271fb27b7758c69f9"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
