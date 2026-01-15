class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "d8a2234991fedd71e4e9f56c4a09d2f9dc5a2122b05f238b17bed8bc21fce8a2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.9.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "0bc0c17603a5b9f1c105cf1c589824137d7176b999027808f965e60c080e09fd"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.9.1/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5008ba820d775831a1726b28202c1c7e95b5e90be6ba680e412720df66fb07ac"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

