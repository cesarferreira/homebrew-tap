class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.38.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.38.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "bd6b355136889c6da4df4f16878d0e0bf12d1a9acdf7bb8d78a48827037d1428"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.38.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "20a760f3df4765cd879887fd3c43d34ccbed4dc3bc1dec02314c925abd74f59f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.38.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8f6ac4b2dfd7ffbfeeae47c7794965ceb95c80445382b693f0237c1d8c17d59"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.38.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1251c450c9bb99d4973b3b0c41aa652419af97348fc725fbe96dbb6fa5ac5f2"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
