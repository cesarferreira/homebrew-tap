class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.60.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.60.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "41cbffeaca6a1f41b60ea7f733ddaabe2050b7e67cd702cadf4523427973e975"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.60.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "ecf4ea05b768a6e170f7c279ea1c8906368d9277139c13071cff29e1c9bc75d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.60.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19333a3283431c48a5810a2c9703d411208db3534ec4ce723f9902774bb3c45a"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.60.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9a4f7a0b966a1d38483b34ca9d00ca180f9dac507a869788186b452d43776f5"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
