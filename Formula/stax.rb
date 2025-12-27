class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.3.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "166083de4148debb901e62234862c8291244439d546d946fe9fdf9541dd035df"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.3.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "a6bf8105372fa285c9ba961a4291a09132c5e1b8afb6444f24b16cd1b07a6ba4"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.3.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "15eb8d0b12ff9c29072b456e2a1508612f29a436763d8d11cac0e1c992ed2ce9"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

