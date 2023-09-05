# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flamingo < Formula
  desc "Flamingo CLI"
  homepage "https://flux-subsystem-argo.github.io/website/"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flux-subsystem-argo/cli/releases/download/v0.0.6/flamingo_0.0.6_darwin_arm64.tar.gz"
      sha256 "a2621204668847ef964617c6fa45217ee2aead28736f69b87c4d4ba9f10dc93c"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flux-subsystem-argo/cli/releases/download/v0.0.6/flamingo_0.0.6_darwin_amd64.tar.gz"
      sha256 "815946d783411ced182dd8fbdb833ce7cf78cb00acaa19a05f8c9077469c98e2"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flux-subsystem-argo/cli/releases/download/v0.0.6/flamingo_0.0.6_linux_arm64.tar.gz"
      sha256 "6b2c025f7e6b22670dad56df95b996508bbcdf532045518247caab37a97ea6a2"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flux-subsystem-argo/cli/releases/download/v0.0.6/flamingo_0.0.6_linux_amd64.tar.gz"
      sha256 "b5075f312175f9a4983e33543abf9f8e05e7d8955db64c2b76b80b77f1671357"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
  end

  test do
    system "#{bin}/flamingo --version"
  end
end
