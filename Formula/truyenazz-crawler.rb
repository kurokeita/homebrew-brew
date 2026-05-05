class TruyenazzCrawler < Formula
  desc "Rust crawler and EPUB builder for truyenazz.me novels"
  homepage "https://github.com/kurokeita/truyenazz-crawler"
  version "1.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.0.1/truyenazz-crawl-macos-x86_64.tar.gz"
      sha256 "c634350bfc1c89360abd2ac210ffebea389290c26172d3d0d73577d5a29c8d96"
    end
    on_arm do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.0.1/truyenazz-crawl-macos-aarch64.tar.gz"
      sha256 "f656507d8b0c2aa239263fd652ef20b54f5493b782a190cbe87dea5ebaf2c0d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.0.1/truyenazz-crawl-linux-x86_64.tar.gz"
      sha256 "878e9ccd8238ad2fc174156920cd5151117544227f100ead80ce3df631cdd102"
    end
    on_arm do
      url "https://github.com/kurokeita/truyenazz-crawler/releases/download/v1.0.1/truyenazz-crawl-linux-aarch64.tar.gz"
      sha256 "2f353bc771c76f9b5afc3c5d3c405b851e512737f32d69906d99d5531d9d459a"
    end
  end

  def install
    bin.install "truyenazz-crawl"
  end

  test do
    system "#{bin}/truyenazz-crawl", "--version"
  end
end
