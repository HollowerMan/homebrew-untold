require 'formula'

class LibodbBoost < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/libodb-boost-2.3.0.tar.gz'
  sha1 '38c8552db872cc32144fb653c19277cfec1df2ec'

  depends_on 'libodb'
  depends_on 'boost'

  def install

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
