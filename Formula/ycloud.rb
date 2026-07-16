# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.1.tgz"
      sha256 "4dcd80e063cadf1a69dd332841e7c0a83dc31bcd0f433d00da0175dd415b8c2a"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.1.tgz"
      sha256 "dc5c6ced52002223532969eead604d28011602b9045f73085a02ba2d21a0c967"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.1.tgz"
      sha256 "f571e6317f4c455751e4532ca8e20b74de3294f34031b8c59de906a4bcff7cb0"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.1.tgz"
      sha256 "bef6a82bc766f6204ddc50d7febfca3c8c836e7630187e771ee5333bf4c4af5d"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
