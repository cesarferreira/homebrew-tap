class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.72.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.72.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "6b7d6bb698a60ba0b6a8ad0bcc1d9c4e62169a2499f848698a6776ffb24ea15e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.72.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3edd50d4e1c7193ec9135aadb14edb8bfbf14af08fa7d096462504d5b1e3e9cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.72.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d78f8b023f6c5a3182a104d0e0e3d016a197a15e87ad868d87e8b7915db102f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.72.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dc5958fe11a597bad117916aab1b4e088b76618b69072b9e83557ed6a38997c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
