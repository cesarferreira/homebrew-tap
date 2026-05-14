class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.73.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.73.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "43d1c0f51c2449af9c215aaa4ed901d54f913069a199962b3060cd27c3c1b887"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.73.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "fd14fa4300c04cc5bf452317f20a1d6340911df6a4dfd76f67e9e19ea82787f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.73.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7118be0cc82604bcddef7ceb2d367da8b2f7e2e17a61360912f1292d844a3d0a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.73.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a570f9f06e3c24bd7e382101dad18d3cb3fbc8285ad316a5e5ba31b8a99c192"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
