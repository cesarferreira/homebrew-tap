class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.105.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1fc86c8259371e95bec98846c6309d7fc45d83f1af0d40822cc2989b818bf712"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b796ed3a1ac097f662fddff2f9b9946db5103651b257178dad8d36398818b0a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adbb38edecb273761640274242f7bac7134ba06318dd0500b466f614a0740fdf"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7aed5210b14a36f7fb1c89e08a74c7432e5c61d68834d937c64f495a018c0c0"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
