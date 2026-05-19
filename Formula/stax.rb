class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.75.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.75.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "4a2485ae1d75a7bf6647eb7e3682495eb1afc539aa62652704ba628037fb0745"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.75.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "6844230c756545057be6eee91e83061a4e6fe60ef60253fa8eeebdcf94f8904a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.75.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fdb499876857a0d65f10a66016b0629ad28ee049c04c5bc4606ebf262acd3f96"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.75.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89056d7849d9eb1d0748430410f04d5a905bd1b310fc824fa117902c54d9484"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
