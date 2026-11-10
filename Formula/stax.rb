class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.119.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "560bb537544152d8f36e410db5168b37f4a928f6250217a94a277e567ef1ea13"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "39e68bac20295155b64594309862a5f13730fc1d2ae0d25d68ab5bae74c7b8c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85ea1bffd73dbd234efec248ef62b171706ca49eac2c3e1450c10011ab3b1764"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.119.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88d708298af590f6e00daf43f7a6dc04f2675ac0a4a3e74a602628c7097112cd"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
