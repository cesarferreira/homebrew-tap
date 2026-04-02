class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.40.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "116eaf23c063e994dcdf3384ec8f83a7e21f23b184f1c13f5a3ef7a8c3bbe5a4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.40.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "8c2ea1463e850e8315ec575b412bcdcf974203b81b61ce053429fcf9bca192a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.40.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4af721cf61eee63e76f196e6fa1c5c999b0fc4e90e2930c335ee67b61f22ac3"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.40.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3a9d6d6a2184fab27a87bbf6c577a730b8c00dd80d0cbb7e8b2692b5c0aadec"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
