# typed: strict
# frozen_string_literal: true

# YCloud Console CLI.
class Ycloud < Formula
  desc "Console-oriented YCloud CLI using browser grant authentication"
  homepage "https://www.ycloud.com"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-arm64/-/console-cli-darwin-arm64-0.4.0.tgz"
      sha256 "b8872fb6165896144094385a941ede75816e94d6767ae487b5ce5f5e08d46711"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-darwin-x64/-/console-cli-darwin-x64-0.4.0.tgz"
      sha256 "074bc692f19fd480fe4541f5a1016381ab08f6f50de93d265afb5ddee88c88ac"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-arm64/-/console-cli-linux-arm64-0.4.0.tgz"
      sha256 "2dda2fb7c8bbf75b712c9cda8033655016326f504aeb9f7971de782f37cfb22a"
    end

    on_intel do
      url "https://registry.npmjs.org/@ycloud-ai/console-cli-linux-x64/-/console-cli-linux-x64-0.4.0.tgz"
      sha256 "c6f8fe2dd3b757673d3e10e189596f1c9033b6d05518550c60b7648140e100bf"
    end
  end

  def install
    bin.install "bin/ycloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ycloud --version")
  end
end
