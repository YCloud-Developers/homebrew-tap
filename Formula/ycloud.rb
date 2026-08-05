# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.2.2.tgz"
      sha256 "757e4bed05092e291251c6e484834ebe8db29a3d3fac9b51346641f29c1a5858"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.2.2.tgz"
      sha256 "2e3dc5db5b9acaabfa428bf8cde5d1394f335c474ec2c254931056142847bf9e"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.2.2.tgz"
      sha256 "e6e288586fb5e8a51ba286ce8d1333ca40dda614e900ee54fb78d5a02e53fa65"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.2.2.tgz"
      sha256 "64424194838b2a9f643536f6eeab60cdb0c55dd9f9d34edadac995c3cf84e982"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
