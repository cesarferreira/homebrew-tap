class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.44.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "900c2fa361bcc8a1cc3445c81721791fe2c765e79eec758226245e58f75e7a83"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "35a317538617e4aad02f238a0b5992cc22e2698de13ddadfedc8846f45ee6602"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad22b6059f152be3072f6244c98a2e828e45865e2846e9d5380e25d7ca4b6f93"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.44.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92dc5611a7a86c2dac2063cfde0522d4c10b4d994098f8683bcb6ccffc18285b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
