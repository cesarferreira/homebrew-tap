class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.27.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "d5a94a28ca42e1d228ade9474639a7fe7c1ef09b5ea27eb6f466b371556e5aaf"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.27.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "42b6195794d6f1f858237eb4b76c965fb6622077f8d1829597a928461b6456f3"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.27.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "af1c81a4245331ebba35eea2a3f19212e1d9d310b415c051695eea48eb78e48c"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

