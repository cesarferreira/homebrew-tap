class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.37.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "30450145cdc1dab5feb7efd5de3243f64fa2b50a8ab690faa630f100d7381bf6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.37.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "f2dfebf1fede2bfb99e196d914c73f2bcc58fbcb5bc3e46e90b9a2eb4548a8ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.37.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.37.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6533eb5a55566d658ab1e07eb3ec050e776cba4ca186acae2e2950987623638"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
