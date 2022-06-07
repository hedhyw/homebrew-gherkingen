# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gherkingen < Formula
  desc "BDD tests boilerplate generator for Golang"
  homepage "https://github.com/hedhyw/gherkingen"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.3/gherkingen_darwin_amd64.tar.gz"
      sha256 "dbae1a7085899bda873cabb7aa204fbc276a59f60ff4f82fe0a9061764e5328d"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.3/gherkingen_darwin_arm64.tar.gz"
      sha256 "4808fcf4a8bb2c21d55b8146359a2382fb63533942d530bd0172d7055f0c9226"

      def install
        bin.install "gherkingen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.3/gherkingen_linux_arm.tar.gz"
      sha256 "652f4fce100272b678f6d9f181a07fb8a01894f20d336073ac84f48c63fe476a"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.3/gherkingen_linux_arm64.tar.gz"
      sha256 "a4a1d9dbcd8c0408ae98b13dbd7bc8ad48b254c9f9e7d94ee974a79406b3c7be"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.3/gherkingen_linux_amd64.tar.gz"
      sha256 "fa47dd159dc64e88143235e08925324b002bb5cac51821baec3f6b7100aaf747"

      def install
        bin.install "gherkingen"
      end
    end
  end

  test do
    system "#{bin}/gherkingen", "-help"
  end
end
