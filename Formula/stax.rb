class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.83.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.83.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "db361d42537c0c58ce991b822a2f85ba725241f05ba278cf0a59de1abf475d9d"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.83.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "23e38146fd6860b978bfa4ed4c21ac778ab82da02e26e21dbe949afc00333428"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.83.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86f750be096036f4eadf1bf548a53c1b79944c9176ef99844390a27c0badd040"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.83.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df0f21f9b09bf927c9620f17ab89e46c1bcedce19098670d08dd5758d2a28cac"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
