# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.2.3.tgz"
      sha256 "884742b401bb3d7a41f0ce5af6560d73b7a15712ee50c1ad220761ba17499683"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.2.3.tgz"
      sha256 "9dceb77948138ace447d7bb9892aeb1ab029eaf990652ba3882974dd16daad05"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.2.3.tgz"
      sha256 "26d218acfa15dac1790eb6c6064b2927aa702f96b4adb02c0d758d76f861460b"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.2.3.tgz"
      sha256 "a7640bd0555c7a269e679c53734996fad6706c0b32a6996f218f2e2964a64c2f"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
