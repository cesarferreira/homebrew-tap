class Snap < Formula
  desc "Fast, minimal macOS window manipulation from the terminal"
  homepage "https://github.com/cesarferreira/snap"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/snap/releases/download/v0.6.0/snap-aarch64-apple-darwin.tar.gz"
      sha256 "e23dc53450d4066767d92fb43d6e9dc11aa5ec76e293aa3a29a570b93a320733"
    end
    on_intel do
      url "https://github.com/cesarferreira/snap/releases/download/v0.6.0/snap-x86_64-apple-darwin.tar.gz"
      sha256 "61f9c5755482d79a17a8dd71294688da501c7b48830c085b1202d2400cc52f14"
    end
  end

  def install
    bin.install "snap"
  end

  test do
    assert_match "snap", shell_output("#{bin}/snap --version")
  end
end
