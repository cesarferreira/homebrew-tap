class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.78.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "fceaa5765ebd749b95f1c59d731b765eb0bf11b1ec4680c0d9073012ddf50274"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ce76376ef0666068be2f8626763bff9e73fff30fd9884e1233c3243a43712d5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d395c7796e2c3987b493009c02016a83d7b7537a138623a75e79cfa419ab001"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2eda867e9d610b3c9a68a4f6874635fc7eba253e38d7c7705d2495aa76c791a3"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
