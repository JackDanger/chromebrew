require 'package'

class Xorg_proto < Package
  is_fake

  depends_on 'applewmproto'
  depends_on 'bigreqsproto'
  depends_on 'compositeproto'
  depends_on 'damageproto'
  depends_on 'dmxproto'
  depends_on 'dri2proto'
  depends_on 'dri3proto'
  depends_on 'fixesproto'
  depends_on 'fontcacheproto'
  depends_on 'fontsproto'
  depends_on 'glproto'
  depends_on 'inputproto'
  depends_on 'kbproto'
  depends_on 'presentproto'
  depends_on 'printproto'
  depends_on 'randrproto'
  depends_on 'recordproto'
  depends_on 'renderproto'
  depends_on 'resourceproto'
  depends_on 'scrnsaverproto'
  depends_on 'trapproto'
  depends_on 'videoproto'
  depends_on 'windowswmproto'
  depends_on 'xcmiscproto'
  depends_on 'xextproto'
  depends_on 'xf86vidmodeproto'
  depends_on 'xineramaproto'
  depends_on 'xproto'
end
