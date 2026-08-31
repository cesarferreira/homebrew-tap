class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.3.0/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "6c995b8da80abf4bdfbbbd09a0fd7bc21ab2f57acb0c1a283b449e9962a90cb2"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.3.0/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "954ba81e83ceacb054829008c747c1096dcaeb4dcee0802fa0a2282ffc16e291"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
