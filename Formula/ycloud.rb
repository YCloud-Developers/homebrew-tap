# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.2.tgz"
      sha256 "e2d2906d919980f3406a48a037b8492e7ce889939e298483b8853228505efb9e"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.2.tgz"
      sha256 "04636270260f30ef5c6515648af53747de76efe149fc1ae86ca8db6bfc4c50ab"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.2.tgz"
      sha256 "6c1288693c3e88b7766a3a672f7e15358f053973b4cfb6020d8ffb8ecc8402eb"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.2.tgz"
      sha256 "a4d10050f4aad4f924c28c763619b45f68c2f928e82a2706cd679910dec99860"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
