class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.119.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4f9b3afffbbb827249b873737398c33be7296555c1b7e8b69d1b0ac1e1da553b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "b99ad6044e68531ababbb035d790684acb616bcb1f6d8fad40c35c00a62402fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05a3212d090f688045f98419158a3e411b691bce4bf5d9e9124eda90b215c68b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5fa07f2375b8a2a5561c570db147f5651f7182ddb6f64bc28eac802dd18b9d7"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
