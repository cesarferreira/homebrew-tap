class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.49.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "a17b08684e4329dd9a09980677bca9fb50976c2da6a9853173e87b62888edbda"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.49.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "3acbe5e8dcfaf97b539ee5b43294ce78252e95952c6a9afb664950340d5789dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.49.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af52b4ef9ea65b6ea1f972e0cc96e0773faee906ddc0efdd53caaf9eddf63d1d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.49.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7749bb6e5a47558a0997f6b7e3804c16e63856e027c7663aba8ac1ad90617d9a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
