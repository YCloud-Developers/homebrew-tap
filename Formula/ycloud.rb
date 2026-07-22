# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.4.tgz"
      sha256 "fcb9bc62613a131e232d0e3442c94223d46984a612da192681a826846d517712"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.4.tgz"
      sha256 "88ae9c310f5d73eac4a1bd7cb23d1aeff1cfc9c4cd04bfcbaab414aa9b708a11"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.4.tgz"
      sha256 "7dcb45be7797f38c453f10bce6ba6dc2a4e80dbce8be5185a1f6f23f67331d97"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.4.tgz"
      sha256 "25eb69c03a89db31d7253038d3aaa281bc36bf7fe140114c13f5d835bbd0da83"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
