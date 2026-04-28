class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.62.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f6e2a2713167db7537618d5d79109ef73d84aa308a122b95c5f1355a7e8a00e4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "acabf37a2d1665b13b746eaf383f4fe316a60cd375f2630cab5d98209ba33f61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6ba63a67f47557b6ff9c1481d07ae26def0377c2d7f0a2b558c304c0869c22b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc88febbfa3a1bd50cf69499ebb6b4c5506cf8d94a647d6f8cece22b7c16ead6"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
