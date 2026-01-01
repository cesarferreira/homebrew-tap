class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4627d4ebb60b4fc05ef881175ec98b44033c68d38131c257d80eb1d9b5f4f479"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.5.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "00a40e62fca97a5c6e15917cda8a2e67c5297c3931f78e1189d95439c8a16c54"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.5.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff92947f1eb8e5c8c6562d9355c948484b783bef372919765e33c66658d4ae89"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

