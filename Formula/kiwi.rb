class Kiwi < Formula
  desc "Run portable macOS key mappings"
  homepage "https://github.com/cesarferreira/kiwi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.0/kiwi-aarch64-apple-darwin.tar.gz"
      sha256 "7e22d2bfc011d619b976dbda52a8316d4e04a922e42bc84deae7c210ad9c1077"
    else
      url "https://github.com/cesarferreira/kiwi/releases/download/v0.4.0/kiwi-x86_64-apple-darwin.tar.gz"
      sha256 "4189b743f8a544fb87245f888e9cc09be2b5435ec15dbc26419f733293d8086d"
    end
  end

  def install
    bin.install "kiwi"
  end

  test do
    system bin/"kiwi", "--help"
  end
end
