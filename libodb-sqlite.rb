require 'formula'

class LibodbSqlite < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/libodb-sqlite-2.3.0.tar.gz'
  sha1 '2643d3c2c3f273f3fb223759e4ad10635cc91ce8'

  depends_on 'libodb'
  depends_on 'sqlite'

  def install

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
