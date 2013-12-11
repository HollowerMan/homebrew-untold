require 'formula'

class Libodb < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/libodb-2.3.0.tar.gz'
  sha1 '8ac9a09a6a86e73951289ee79c022661caea7f96'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
