class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.86.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "8b5e5f599aff91bdf90f608bbdc2c84d51fd0f9fce9f43dd9e8357a245ef305d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "dc467ad83d199351ea67a910a0efcc8d6bf89466411ac6a79f3398826a1536ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8daefe2ca9374f2228292e526b4ea4b0c4103a0f972bcb3d5ce79393c9ffa0a6"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.86.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6cb3bdc4e6336bc3696869d1c5d0e5e84af5257471626a69ccdb5e87556e3c8"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
