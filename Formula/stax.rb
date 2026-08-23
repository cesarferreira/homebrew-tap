class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.105.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f6fac4c9cae7df8174e7fdbba2f1250b7b8baaec29af31dff017e94a3b95c62b"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "e5879acdfe2be7773ad94adb3b34372b07deee328246860764d832bfbeae8dce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06ed20d9e50b290ecb1e27ede23ccab4b92170e1254730fc707dd681754294ff"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.105.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5b9d2b72c1642a4feaf3e05e4e7df11b01ed3dfed75df02c0a448148a57f934"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
