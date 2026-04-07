class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.45.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1b0551098b7c75b40af1f0387e79c05fd987ae2403c2ce4a7505be6fac49df57"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.45.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "bb1106f48066cd4e889858c8d6a6f581f44386aa07b455d78738a83f429d5e85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.45.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e68e8b26ac8e03b291a975aaa250eff1779bc3fc4a20cf96f79540cd90c5379"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.45.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63ee89d48c25af006b0c4f4b10d94ba66d27d3d68b8ea226c806f12f07f2659b"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
