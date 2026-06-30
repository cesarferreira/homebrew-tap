class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.91.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "70405a68e89306b6045265ca3a81c1920ce400fa0140c523ee9764066dfa75b7"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6198270ba3706670643feb819b73b93602bf3f7527907d1ef6071d4ce6102285"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5ff56938c1559943a985bc54a17fb3b2a6020664c8024ea58cf713399300e52"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.91.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d36cb9259476f5f809dd3a4ef6288d6e51c2eb99be419079cbbce4c87278e7d4"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
