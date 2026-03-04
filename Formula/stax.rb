class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.26.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "31314f9be2c861e6039a07c8b88f096d4580b14f2f0b7ee8b71a234896b71371"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.26.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3a3bf9352503ee0d502fbf18ac981bacca3460479490abfc1cbf43bf0aaa65a3"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.26.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dd7c34e17e8a1f4704f1cdadb899eca8fed9918f40e037ed90cdd512dff2afd6"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

