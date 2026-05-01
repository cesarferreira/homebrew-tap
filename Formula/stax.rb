class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.66.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bb183edf2218d19bccdaa4b240adbc52c1ec970602a1c7c7cbdf22a405b028af"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "637a56267e1abe00ef556215fb38508f3e55eed84b74c90fd3cc70ace9e36a22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "689af7040b09b3a1c06a6883acc3ee01b444661c302f13ce94ef29effb58a6d7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.66.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b636bf23c6e443ae01c7a751c7180a96fc0304b29b15fc38f3a0f5916c8282c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
