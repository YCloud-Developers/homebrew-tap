# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.0.tgz"
      sha256 "78af99888b2cbf2565ec20c1bb672daee609868730e09e8c119f72719b7f1452"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.0.tgz"
      sha256 "1fffa2ce678e8874e5bad03c6efa674967a34971fc811c2ff24619ee1be6b61c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.0.tgz"
      sha256 "eacaa135abd5022c9376a55079fddd636cf4188d106e4813d788caac06d0ed2b"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.0.tgz"
      sha256 "1177025afc9d2d9de92b0f071a9c7335eeabfb05f906af0c9f20d777d7cbc41e"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
