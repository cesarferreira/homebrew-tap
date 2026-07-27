class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.99.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "be884d8500eeff335a268977b0d020c5be9dc5b6fd3025e86264196602d45c79"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.99.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "894e8f3b06d0e20480baa2a3c98510eca8e66c40b5864144e041cd919c67bbde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.99.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d012bef21cd6c23feece3dc5593d4f7b29a09e59f40d4a3588e4d6e7ec8e8d45"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.99.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e38af22d0b745b73ab12909484cc9a251a7dfaccc3e05cbf4fdda866b6a6edbf"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
