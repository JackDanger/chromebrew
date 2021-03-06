require 'package'

class Qemacs < Package
  description 'QEmacs (for Quick Emacs) is a very small but powerful UNIX editor.'
  homepage 'http://bellard.org/qemacs/'
  version '0.3.3'
  source_url 'http://bellard.org/qemacs/qemacs-0.3.3.tar.gz'
  source_sha256 '2ffba66a44783849282199acfcc08707debc7169394a8fd0902626222f27df94'

  def self.build
    system "sed -i 's,css.h,libqhtml/css.h,' html2png.c"
    system "sed -i 's/$(prefix)/$(DESTDIR)$(prefix)/g' Makefile"
    system "./configure", \
           "--prefix=/usr/local", \
           "--disable-x11", \
           "--disable-xv", \
           "--disable-xrender", \
           "--disable-html", \
           "--disable-png"
    system "make"
  end

  def self.install
    system "mkdir", "-p", "#{CREW_DEST_DIR}/usr/local/bin"
    system "mkdir", "-p", "#{CREW_DEST_DIR}/usr/local/share/qe"
    system "mkdir", "-p", "#{CREW_DEST_DIR}/usr/local/man/man1"
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
