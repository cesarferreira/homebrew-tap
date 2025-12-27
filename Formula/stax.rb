class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f0c020f488e20baaf186f93cfe7bb07f52704627c9785b831b556d6cf109a423"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "f5572a3b3058d5654f1262fef042d464079d6143e1b0bb80649768b2ceced934"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.2.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d97a57ded1b54174c1425268395d1e4eec7130142dac12bc32713d70c6601b1"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

