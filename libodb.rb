require 'formula'

class Libodb < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/libodb-2.3.0.tar.gz'
  sha1 '4931b091e925b7f578fa2fdb82dcdc02e7bb5fa9'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
