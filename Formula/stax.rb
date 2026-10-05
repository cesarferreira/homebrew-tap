class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.114.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.114.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "15ffbe586c89a269eb59b22c43506746164e9c5de7861a5b58aba60c512189d7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.114.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d5cd1fda4c79611923421fe267df7f0cfa5a3301338e2b11a289e5a365de8f43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.114.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c999af683638e69dce0552fc39aafb7dbac507df222d8dfc8d50b67abfa26d9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.114.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e1f800246503c688cafdbd7580838aa9421537d9f97477e71f8656bc96eec2b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
