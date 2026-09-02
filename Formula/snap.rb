class Snap < Formula
  desc "Fast, minimal macOS window manipulation from the terminal"
  homepage "https://github.com/cesarferreira/snap"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cesarferreira/snap/releases/download/v0.5.0/snap-aarch64-apple-darwin.tar.gz"
      sha256 "aeae9db454e3373b73813fcbba25669d6cfb1a1a98bd56d8be0719bb51fbe3c3"
    end
    on_intel do
      url "https://github.com/cesarferreira/snap/releases/download/v0.5.0/snap-x86_64-apple-darwin.tar.gz"
      sha256 "43b8d95619357159f263e6fde90cc34311fe8c0cc27df3308558a924acf8831e"
    end
  end

  def install
    bin.install "snap"
  end

  test do
    assert_match "snap", shell_output("#{bin}/snap --version")
  end
end
