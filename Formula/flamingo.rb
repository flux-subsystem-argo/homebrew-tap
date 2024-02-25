# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flamingo < Formula
  desc "Flamingo CLI"
  homepage "https://flux-subsystem-argo.github.io/website/"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flux-subsystem-argo/flamingo/releases/download/v0.9.0/flamingo_0.9.0_darwin_amd64.tar.gz"
      sha256 "be88c7f025ab30b8bb84d789f1da4bdc16ae7f869c0868bf95c71970817147f9"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flux-subsystem-argo/flamingo/releases/download/v0.9.0/flamingo_0.9.0_darwin_arm64.tar.gz"
      sha256 "396a7b407c05f64c743a9c50016b8f8327e1c99a6ba156b23145429f14552f02"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flux-subsystem-argo/flamingo/releases/download/v0.9.0/flamingo_0.9.0_linux_arm64.tar.gz"
      sha256 "8cedad9f3a7fb6c0868d2c74bea7be4ed95cdbfaddb35cfb10482396764065b9"

      def install
        bin.install "flamingo"

        generate_completions_from_executable(bin/"flamingo", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flux-subsystem-argo/flamingo/releases/download/v0.9.0/flamingo_0.9.0_linux_amd64.tar.gz"
      sha256 "a63b32be4f152fbb8da7b3744a725cc2a3cf9aa8c835027e55a1d7425d50adbe"

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
