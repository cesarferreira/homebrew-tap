class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.31.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "594fb861112a05f0fe2022489a4c19d92887eae42017a1f1656440a2a1ed1a51"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.31.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "fab03f4a363531d5a9ff2ad3d9f05dbcb3561e387840ed6841611bdf70cb6f22"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.31.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7a2647a8ecaf6178afb83074dde0e14632857398f41dac86916230975bc385b6"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

