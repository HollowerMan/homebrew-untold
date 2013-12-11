require 'formula'

class LibodbPgsql < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/libodb-pgsql-2.3.1.tar.gz'
  sha1 '8b1874747580ac840f4b22c4b7b13a1523a9f270'

  depends_on 'libodb'
  depends_on 'postgresql'

  def install

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
