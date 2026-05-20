class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.78.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "1165afedc50538726bb87cdd11141d6987d0b47a572601e0166b8400503a2d63"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "8af293a8bff576668adef3b61c7ea7a99eb52e70776217978cd92ad51ea11c1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "626d66ac1571b2085eff286f913b73b849017e6e2669cbaf1dbf1e30d9040a27"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.78.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "133a57068301fcca245a1bc1389bf05e70fee423516fd3b7491e4ee206cbee34"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
