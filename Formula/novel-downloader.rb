class NovelDownloader < Formula
  desc "Rust crawler and EPUB builder for Vietnamese web novel sites"
  homepage "https://github.com/kurokeita/novel-downloader"
  version "2.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.2.0/novel-downloader-macos-x86_64.tar.gz"
      sha256 "60c259186e93eb3ff539459ae999c94571626ae7abb70c1c3cb6c5602b33a3c3"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.2.0/novel-downloader-macos-aarch64.tar.gz"
      sha256 "83864dcd826b0cefe7f2f3138416ae5713ea0b960e1eb8874abdb9f1cf9eede5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.2.0/novel-downloader-linux-x86_64.tar.gz"
      sha256 "9390ea7f92d32fa49f416504c8b1a0cbdc17574144cd348ae01858aa635e90a8"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.2.0/novel-downloader-linux-aarch64.tar.gz"
      sha256 "81e35965902e8d6139926114664c79ff9a466a8039626a8d01d209e581aa521a"
    end
  end

  def install
    bin.install "novel-downloader"
  end

  test do
    system "#{bin}/novel-downloader", "--version"
  end
end
