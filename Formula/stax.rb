class Stax < Formula
  desc "Fast stacked Git branches and PRs"
  homepage "https://github.com/cesarferreira/stax"
  version "0.62.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.0/stax-aarch64-apple-darwin.tar.gz"
      sha256 "f5fc1a71b96109b2a98f16734bf2353cbd7565bd1d998f07ff63b39a030ddf4e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.0/stax-x86_64-apple-darwin.tar.gz"
      sha256 "33ca298762e7ab88b378283da2cbcd0bff57276d82905a4153a24fbf61c71464"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.0/stax-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c05f44b8f010281f095837c737da7de485d32f1b97c5252d7a08300ffc2ae62e"
    else
      url "https://github.com/cesarferreira/stax/releases/download/v0.62.0/stax-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c8f4ce1074a1b3222a7b45470f62ab1df3017e1e8d6c76c6cd410b749b4842c"
    end
  end

  def install
    bin.install "stax"
  end

  test do
    system "#{bin}/stax", "--help"
  end
end
