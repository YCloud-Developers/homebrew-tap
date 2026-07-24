# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.6.tgz"
      sha256 "4ddde22fdf092ea59f9dbaa4ac0db712458e6a60c4eb5b2f6252d2611a36a69b"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.6.tgz"
      sha256 "a95e0f69fc177e1bfec5c40180023181e5160c9716bd76017a9b29989cb94cce"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.6.tgz"
      sha256 "cc8a90a57ff87b84ccb113a49a91943d17afec10b2f409e8e9043a85f1f07bde"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.6.tgz"
      sha256 "e645501e9bf178c229a1e1acda4b2b8dec75d1ceb974e554629be03cfad16cf3"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
