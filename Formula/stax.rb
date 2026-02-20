class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.16.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "59971826022e1ffb58e630c6bc3e57121cbb5ccf1bbd5c931ed40d0731249a2e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.16.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "998de0089ed40014b5877bdc27d511dd7510ecf0ae690b31fb433724d943d11f"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.16.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fecfeba64caddfe12b9bca5be2fdf6cd13c7ee8fc6affa8d5f24cd7031faf77b"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

