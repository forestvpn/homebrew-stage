# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.35"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.35/fvpn_darwin_arm64.tar.gz"
      sha256 "6ddecb07ac3410c63542f9bca3e61dea28d1653a08025f73b3b0f93f76ac93dd"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.35/fvpn_darwin_amd64.tar.gz"
      sha256 "0c2afe1bf689fbc9adb96b65bae4446a6cb642b3f52fc80ee0705bdfc1e065fd"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.35/fvpn_linux_amd64.tar.gz"
      sha256 "cc3c1d81d8c85db4e100c6b9065d227446762bba03197997c9798199fe4fd468"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.35/fvpn_linux_arm64.tar.gz"
      sha256 "0f184dee173dd78826a07906661504adabeb9265f0e89fbc7d87c1225862f10f"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
