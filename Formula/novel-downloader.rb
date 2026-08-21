class NovelDownloader < Formula
  desc "Rust crawler and EPUB builder for Vietnamese web novel sites"
  homepage "https://github.com/kurokeita/novel-downloader"
  version "2.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.1.0/novel-downloader-macos-x86_64.tar.gz"
      sha256 "bc4a5cf1d825d5f3409d1975b8b6b28c31b40b8b2bf685a60b30c93e314767bd"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.1.0/novel-downloader-macos-aarch64.tar.gz"
      sha256 "3aec4f9a3c5457cf0e1f10393d0d22c9e7682f135e4567f2c0111467ba51cb15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.1.0/novel-downloader-linux-x86_64.tar.gz"
      sha256 "10b47606ff2a9dbf93e314bb5af0b969ee9f9ef42aeda29295cd009daa98db8b"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.1.0/novel-downloader-linux-aarch64.tar.gz"
      sha256 "4ecd9eef97079415c547acd001a01cf26f2b013753bc3d08a499cd98f0cb6569"
    end
  end

  def install
    bin.install "novel-downloader"
  end

  test do
    system "#{bin}/novel-downloader", "--version"
  end
end
