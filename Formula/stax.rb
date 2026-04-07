class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.44.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.2/stax-aarch64-apple-darwin.tar.gz"
      sha256 "cc9b54f13a8c1ee87c0a847ce74ef5238b3c3984d96fe3133480c4943050e65d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.2/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e718534cf517862b2e3c7d7a4a64df5a9a458c3f5239cfc8288be385176a2b47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.2/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89661e2870a39a80752ac01b73b0fb3331e8db4187ad932d62eee5a00ffd94f8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.2/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6a42ff2ccb90f43382dc42444af70e5ef5962b014f01c8feffbd67ac6cfa81e"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
