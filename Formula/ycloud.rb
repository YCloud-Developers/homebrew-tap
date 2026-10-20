# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.3.0.tgz"
      sha256 "df41f233f1ac5edd3a6e5279c033ff0bf71c438580f83c0757434f07223c0367"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.3.0.tgz"
      sha256 "ebae78a1aea47dc7d140653e1101c279adb1b77fef411201cef04c3876066605"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.3.0.tgz"
      sha256 "16fd33ce4a197b46cbb574dc266696971f94711cb84172f2b06328423b88698d"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.3.0.tgz"
      sha256 "5440538947057d8ed9ca606b81e78f3132428999235a55f14c7721181708ec9f"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
