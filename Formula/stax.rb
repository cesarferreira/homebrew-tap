class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.88.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.88.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "ea4162ef8d76254d9bb82de15f4da4d7b7457aebe800104d5da065d4536730e1"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.88.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "4af65a68c266ea3d7cc2060c8fff25fce108ebc6fff36c324b1b742fa15410fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.88.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "770f760fe903d865cf6a06415faf64227e04914c4f06970c1985b9aefe9bd1e0"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.88.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6219c86cfff2d4e8a4667759f1935d5c06e4fc089f60fa9d81570a095e652051"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
