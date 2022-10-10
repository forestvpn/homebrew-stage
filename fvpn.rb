# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.22"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.22/fvpn_darwin_arm64.tar.gz"
      sha256 "2442b933b52346fa40a29e21f832d136b8c5b01e6acbffe78355221d30484c22"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.22/fvpn_darwin_amd64.tar.gz"
      sha256 "3467b5d96c250b6e13f33336320134fc6e34080190deb3c221927e79879e45d5"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.22/fvpn_linux_arm64.tar.gz"
      sha256 "4d80dff4a56bb4219de4adfbb59792c1c3bab0093c80a522c525c9ca3cfd0953"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.22/fvpn_linux_amd64.tar.gz"
      sha256 "5ad182c1c62e482c7ccddf43dd1d579034fc3c2ef21f6d314b2637e154f97deb"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
