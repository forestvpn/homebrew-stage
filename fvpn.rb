# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.3-beta.3"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.3-beta.3/fvpn_darwin_amd64.tar.gz"
      sha256 "4a78c5b84f72c80eaac585bb3f280d343383ff037c1f0aa9d9265ee940c3e407"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.3-beta.3/fvpn_darwin_arm64.tar.gz"
      sha256 "c18a8cb4d28238c1a07bd9cdea2a7317ac39c867293b2d149d34017faa9d394b"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.3-beta.3/fvpn_linux_amd64.tar.gz"
      sha256 "478339e575053abc190f74884440235f1d49c205ba500ce631e6b69a6e88e5db"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.3-beta.3/fvpn_linux_arm.tar.gz"
      sha256 "2b2c7d58cdb2a5e56c18bb0a938cd6a8ab5bacb2df542af6bd9787696b4048cc"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.3-beta.3/fvpn_linux_arm64.tar.gz"
      sha256 "ce8a727755e7e21ae8328949740154c10649908f6f56b3664b0f2c796b1a3cac"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn --version"
  end
end
