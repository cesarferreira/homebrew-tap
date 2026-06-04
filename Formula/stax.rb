class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.85.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "dbe3ac653b0ade98d75ffb9dca8dc47ef7cee3859129bd3f02e7f426c4358583"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ac0c65aa56e08ce75fb1030ed3903747127afe4303e55bcb13910559e04434ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d95d2bcb13ec569c2b57a855f6b5b20bb5a2305a65db7c63184178f05e2ec79"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.85.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e463a90ddd3318e169a82c53bdb08483913e470d7385e6ce53f71aa840a71679"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
