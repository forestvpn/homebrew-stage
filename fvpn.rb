# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.13"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.13/fvpn_darwin_arm64.tar.gz"
      sha256 "35abce449f5b67feb84ac484d9aad1e50bd90669c83d19182223d386087ee636"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.13/fvpn_darwin_amd64.tar.gz"
      sha256 "f07d354f53dda717e85b83b52460b6a46a70ca18d43042b9d6e378e4663a5d51"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.13/fvpn_linux_arm64.tar.gz"
      sha256 "84933ce7b3b0645e98d72e7a50e75deaeffd8b5a2590b5aad40c6dd4aff29e8f"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.13/fvpn_linux_amd64.tar.gz"
      sha256 "207ac111350937775e3622635b26c90863b19e227fb352b2f191f6ac4ad03e32"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
