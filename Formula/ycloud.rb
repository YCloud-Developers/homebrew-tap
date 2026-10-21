# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.3.1.tgz"
      sha256 "c6b57d40e61c0e747aeb5dd003854dcce3241f2706af1a9587a7eff4fcdabd7d"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.3.1.tgz"
      sha256 "56d2be7a4efc80272058a5f00c7748ed87b88ffdf84ca4226bb05fbe3b0fe7ec"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.3.1.tgz"
      sha256 "3ad5a2836e43c91dd9d3b0d2ccb4e3599673e229e7a5879f7cf0d168b4d6c13a"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.3.1.tgz"
      sha256 "263672e1c05e8b09c695b05d6b9d0a8d15d43362576f6b2598f75fbaa621c316"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
