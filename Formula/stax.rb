class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.17.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "dcfe3a0ead160403ca9e7bf33f60b7d9598948c1e7af5a45bdc7579bc04de8e4"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.17.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6f034050fc690f79adcf880e6b7095ec239cea83efa033dc03097ba42311978d"
    end
  end

  on_linux do
    url "https://github.com/cesarferreira/stax/releases/download/v0.17.0/stax-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "19276955f4634cfe226ff454b3d8ee23be2246ef1a2617178aa98328ce01266f"
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end

