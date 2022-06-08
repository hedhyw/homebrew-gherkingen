# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gherkingen < Formula
  desc "BDD tests boilerplate generator for Golang"
  homepage "https://github.com/hedhyw/gherkingen"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.5/gherkingen_darwin_amd64.tar.gz"
      sha256 "b2dc4dc3df725bb18c56cb766eba500318c6bdd05b3c7808220b6a9459c35387"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.5/gherkingen_darwin_arm64.tar.gz"
      sha256 "b88c3d30b1ad2426f5e8eb14f0611d65923eb38d5f8e7bc9fa36b5e2be8bbd93"

      def install
        bin.install "gherkingen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.5/gherkingen_linux_arm.tar.gz"
      sha256 "6e7d97df2a85084c51b210405e89e86cc51f7f4ddb5b4822cbe0c33842b0c556"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.5/gherkingen_linux_arm64.tar.gz"
      sha256 "b70186cb598b002a57f43cbe3561d801fd70806093f8f72cc3506a7326867354"

      def install
        bin.install "gherkingen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/gherkingen/releases/download/v1.0.5/gherkingen_linux_amd64.tar.gz"
      sha256 "5571b805b1c35ba341f92734fbafa33f7c34dea95fe7983e285357dabae29c0c"

      def install
        bin.install "gherkingen"
      end
    end
  end

  test do
    system "#{bin}/gherkingen", "-help"
  end
end
