# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.3.tgz"
      sha256 "b9bb9e54a536e8c1580874de5f4f0c3654f38cca28e1f86db677ac3496045920"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.3.tgz"
      sha256 "3009527f35f65ef5c7a10d743323f3c3698f6c91e3b2aa2a2231a3af56311288"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.3.tgz"
      sha256 "18d8b5fd2669326f6f9390ba7974f28cadcf0042713f6bdd8225b5e91e232772"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.3.tgz"
      sha256 "14a0ca6382b57c42830ef8895b4f1167d43f36374dc399edeb590a09641a232e"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
