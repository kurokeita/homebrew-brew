class NovelDownloader < Formula
  desc "Rust crawler and EPUB builder for Vietnamese web novel sites"
  homepage "https://github.com/kurokeita/novel-downloader"
  version "2.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.0.0/novel-downloader-macos-x86_64.tar.gz"
      sha256 "b51b101fd6d7dfa255c88542d6d8302ef8ce8c418ebb7bc34599931e05b3023d"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.0.0/novel-downloader-macos-aarch64.tar.gz"
      sha256 "460fbd0f15e7dd3d538e453b4b7acfa6d5f28369e04ff95340cd770b448541c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.0.0/novel-downloader-linux-x86_64.tar.gz"
      sha256 "e8652dd98df943ec162caf200dee353b16eac5c450abbf0705f7036432252b82"
    end
    on_arm do
      url "https://github.com/kurokeita/novel-downloader/releases/download/v2.0.0/novel-downloader-linux-aarch64.tar.gz"
      sha256 "28a6a930f286af90670d39f9b05142f384dc9a90431c80b99aa398b48da39864"
    end
  end

  def install
    bin.install "novel-downloader"
  end

  test do
    system "#{bin}/novel-downloader", "--version"
  end
end
