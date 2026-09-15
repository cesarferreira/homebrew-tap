class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.113.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.1/stax-aarch64-apple-darwin.tar.gz"
      sha256 "865f69488b3cc6daf2a259c842bd0c6a6c0dc5b69b70b4fd3d5aae12213293a2"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.1/stax-x86_64-apple-darwin.tar.gz"
      sha256 "c0a4a4d830afda8f6126c65d597eaf20864ad29ba224c33838472d028bf7d7d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.1/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e371f2ea9ed2128347540ab9293f4440b879c1ad28fbc8e71f5d607dc900346b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.113.1/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42bf8f63b7253c5e41cc9e76c8d388a21dc85521c6d1339d2344b65446e8c27f"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
