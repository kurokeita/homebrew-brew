class TruyenazzCrawler < Formula
  desc "Rust crawler and EPUB builder for truyenazz.me novels"
  homepage "https://github.com/kurokeita/truyenazz-crawler"
  version "1.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.1.0/truyenazz-crawl-macos-x86_64.tar.gz"
      sha256 "1ed3f488fa7590e4b4056797fca33ce000c410f048258361bb25657b8ef4dda3"
    end
    on_arm do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.1.0/truyenazz-crawl-macos-aarch64.tar.gz"
      sha256 "5deb7e04b46a2b1cdfda90c27a7b6c36b0373521477e257dec1dded6508ed245"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.1.0/truyenazz-crawl-linux-x86_64.tar.gz"
      sha256 "a9660e844e9d3f26bf8e35d47c175ea0e148b51b47e2d588956f6857eef64d4a"
    end
    on_arm do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.1.0/truyenazz-crawl-linux-aarch64.tar.gz"
      sha256 "666e0a5c1205befd696d8390088db596d18e5540a4bc227857e4f4bb0b965cc3"
    end
  end

  def install
    bin.install "truyenazz-crawl"
  end

  test do
    system "#{bin}/truyenazz-crawl", "--version"
  end
end
