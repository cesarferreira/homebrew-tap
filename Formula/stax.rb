class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.101.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a7e6737902901e2f54497e535b4bb8fde3aca96a7705158fe2c142a8a4db75e3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "85a999c04b5912aa17418fade48cef1bfbc03a10e07f9a93a443ece796d5d38a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "586534d1a9fb8016811963347c81221ca024bac8b1012a6c9dd15f65a56c475c"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.101.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a315647147a8862d5c216febe3b73bff3cf2b8ae2171778400aa16f0963b4cdb"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
