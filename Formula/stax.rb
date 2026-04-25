class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.57.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.57.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "518cfdf4cdf6abe40d9012c15e96e684a4d0cda1a81345ad9b89f94ce51b7fed"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.57.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "d3f7900018a39bec4c82205a391c40d32e685b2510caaf2c06d53b45bd6d4477"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.57.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9db78d311afb3c509aa32025b30a8ab508e109efbec4cf2191424a669a68c3e6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.57.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2868d75cb39aca37bae011994360184c49f3070881c7b293adba297168d8f435"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
