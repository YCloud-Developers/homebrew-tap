# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.1.5.tgz"
      sha256 "489fd9f98f043ac6edc0d1086563175acb79ce5a36e056577652bd5c77e32f20"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.1.5.tgz"
      sha256 "99a01a0866bf7e03776e8607d1cf3d1a6368f1046ed399f8e7a0ad90146c39b7"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.1.5.tgz"
      sha256 "0eb0b84fa4754ef62d0e821f17ddb25d3aa3d8a0df43745fa4804458b3e16ff4"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.1.5.tgz"
      sha256 "986b9d48049b9804051df812d0d130606a98a459c31e8be8ebacc07edd7d8ead"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
