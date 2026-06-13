class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.86.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.3/stax-aarch64-apple-darwin.tar.gz"
      sha256 "18413a42b9e91422d5b9977a3961f63f193bcd2e9814a691335dd0ab97e870ca"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.3/stax-x86_64-apple-darwin.tar.gz"
      sha256 "10f30feb9460cf6c0635ccbb276ca190ca1d952c0eb924d48891ba3d434c8913"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.3/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d266a1e3960654ef3a3bc1a4bd87ca998e068cf3dbfcd4d09cb5b959ba636d8"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.3/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7ff05ee50c8761f20924063f411f6ed6a6a076cee9e33b14ad9e79a09cec298"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
