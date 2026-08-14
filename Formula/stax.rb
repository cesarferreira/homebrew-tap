class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.104.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.3/stax-aarch64-apple-darwin.tar.gz"
      sha256 "3acb1bd53bc109adc3d24d9de009b190c70316a1c79dba515d84bb15e2dc76bd"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.3/stax-x86_64-apple-darwin.tar.gz"
      sha256 "0eb8504e29ac1f0e4b63cb4bd276c8455f3bfcff090f993222f517ae22743b51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.3/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "779a7b185df1c80eb00bb7b57132e76d9b364c034570f25f7887d87cd13b97f9"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.104.3/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64a7aefbf8163614b61b1768abb02046baa9b47227d8ede7343b9087bfb3f8a3"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
