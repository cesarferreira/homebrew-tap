class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.3/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1883fec62b2a707b6c5f9cac03afe4a5f0d8a2cacd10c9b74c188d3266c0f8c2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.10.3/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b335b6c594db9a35185478cca24840edc4bbd1b8849b3aec9c18912efa471220"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.10.3/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "457315cdf0e9c67d5d76773b1108c899f3a3709d0b34cd7e026a83f525c5dd3c"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

