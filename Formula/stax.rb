class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.77.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.77.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "329ab4fe20807057b2297869cfa26861109c3d5fd250e2a5ac6d601527ec416e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.77.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e876a1c8607afa383e48b6d02ecc22029ff0493ff79dd3efb0f25d5036f97a5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.77.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a2d123e3f9ffbb5f5aa3f46800e521901434076fac997586e3d1e3a2e3c97dc"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.77.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "744a1a04942e40de5e667a21e668eb708afb5a4669ed353556c2ebccc8e6b192"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
