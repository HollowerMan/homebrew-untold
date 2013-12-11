require 'formula'

class Odb < Formula
  homepage 'http://www.codesynthesis.com/products/odb/'
  url 'http://www.codesynthesis.com/download/odb/2.3/odb-2.3.0-i686-macosx.tar.bz2'
  sha1 '7bdde23582d8e6f57d5a2fffd9fa77ab35de5bcc'

  def install
    prefix.install 'bin/odb', 'etc/odb/default.options', 'lib/odb/odb.so', 'man/man1/odb.1'
    prefix.install Dir['lib/odb/i686-apple-darwin8']
  end
end
