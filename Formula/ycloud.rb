# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.2.0.tgz"
      sha256 "ea4af853d814725c4404799145c30c9844077558b2a1a8050a1cdb29a976b809"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.2.0.tgz"
      sha256 "e3168be0ced5ce2b16799a4e777691df6a0eba2dbe0b426f377924cf2f6c6e1b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.2.0.tgz"
      sha256 "1e7b162a37e5e7d402cd71d77e6c9c20a5239d7a9128d648a334ce0a285798cb"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.2.0.tgz"
      sha256 "b7a5adc0a45182005f37bfa15b512d99a6d60bd8880c418eb53d2b7451e69187"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
