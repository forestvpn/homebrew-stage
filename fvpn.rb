# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.36"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.36/fvpn_darwin_arm64.tar.gz"
      sha256 "ff385098d8420516db40c592943616370f8b4b319252055d64de795c40145ef2"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.36/fvpn_darwin_amd64.tar.gz"
      sha256 "53df7553fddab9d8e465b529799f3eeb14b0052da41e727e76bfe10880b5b9eb"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.36/fvpn_linux_amd64.tar.gz"
      sha256 "0e26d40abb685a06626c2eb44e2e82fa0fb32d2a29b8afb29d478fde66d50662"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.36/fvpn_linux_arm64.tar.gz"
      sha256 "b8586b143eb4c89f36b99adfc8842c2e26918cfe1b8d2156f8f88ef0507b8e2b"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
