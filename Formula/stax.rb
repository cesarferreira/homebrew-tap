class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.113.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "7f468bad07ecfacd053248a25d6ae10a12968059e421a8a381e57b3d47764c8e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "5adea1b8652990ac7a26f47324134b1eeeac6895e6ea48d8cc8e5dd31381c258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5951114d53ba31ff07e11664ac9ffc994c1e1ad757747fef3807147e27d0f19f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87ecd53a31f3482819530002de267b3090c8ccabc24407b9f2c4e3d81db046ba"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
