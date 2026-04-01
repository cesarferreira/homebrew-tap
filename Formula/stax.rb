class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.39.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "35d871497a8f33c7843fabb0c4d6eddbab4495caec9531975a5510163ac0e8a1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.39.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "0dd6f18970320e87f93c6b82325b12e9d4833d0b6755abc57039b5b54497b835"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.39.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0988225fe75d29cafac7fc259a64e1a33356b1deda421b05cbd9c5ffbc2a63ad"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.39.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "829eda91cdc878c6f385454cc61f7c180c13f79756f895e04c3e0efe0f071045"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
