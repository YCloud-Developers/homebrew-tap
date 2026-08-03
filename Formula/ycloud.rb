# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.2.1.tgz"
      sha256 "631a741c050b61070754e9a274005a1650d675f8d504ef81cfc5e9ce5297f383"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.2.1.tgz"
      sha256 "7709bbc7619c5453ee5b9e6772c5fdd7691044790fd0443cae69ab05573b08bb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.2.1.tgz"
      sha256 "3224ef7a25b49b4672ce3365209243d6ce0fe3dc5106a710e806761fb194f1bf"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.2.1.tgz"
      sha256 "6928940c14b5883619b7378591317aae69b75c23a5e40a64c2d88696de19f5ab"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
