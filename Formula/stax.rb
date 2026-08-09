class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.103.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4d62cafb39e8069fc081017af81283fbd974bb0b474314f639aa2ada0d4aee1f"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "2df13c716dc49e93dc737c9991dfb81aaaefe26616be6039dd33cc93ac6d8f16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df6c4f5bd6bdba22332fc88ec1fd58082d5151c94895f34544291071914f909b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.103.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6305518f91ce0c13d927469c8e2188e9a0242a0c481e7f98f15ee9a0ab2691a"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
