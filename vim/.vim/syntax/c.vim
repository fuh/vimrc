" Vim syntax file example
" Put it to ~/.vim/after/syntax/ and tailor to your needs.

let glib_deprecated_errors = 1
let gobject_deprecated_errors = 1
let gdk_deprecated_errors = 1
let gdkpixbuf_deprecated_errors = 1
let gtk_deprecated_errors = 1
let gimp_deprecated_errors = 1

let atk_deprecated_errors = 1
let atspi_deprecated_errors = 1
let cairo_deprecated_errors = 1
let clutter_deprecated_errors = 1
let clutter_deprecated_errors = 1
let dbusglib_deprecated_errors = 1
let evince_deprecated_errors = 1
let gail_deprecated_errors = 1
let gconf_deprecated_errors = 1
let gdkpixbuf_deprecated_errors = 1
let gio_deprecated_errors = 1
let gnomedesktop_deprecated_errors = 1
let gnomevfs_deprecated_errors = 1
let gobjectintrospection_deprecated_errors = 1
let goocanvas_deprecated_errors = 1
let gstreamer_deprecated_errors = 1
let gtkglext_deprecated_errors = 1
let gtksourceview_deprecated_errors = 1
let jsonglib_deprecated_errors = 1
let libglade_deprecated_errors = 1
let libgnome_deprecated_errors = 1
let libgnomecanvas_deprecated_errors = 1
let libgnomeui_deprecated_errors = 1
let libgsf_deprecated_errors = 1
let libnotify_deprecated_errors = 1
let liboil_deprecated_errors = 1
let librsvg_deprecated_errors = 1
let libsoup_deprecated_errors = 1
let libunique_deprecated_errors = 1
let libwnck_deprecated_errors = 1
let orbit2_deprecated_errors = 1
let pango_deprecated_errors = 1
let poppler_deprecated_errors = 1
let vte_deprecated_errors = 1
let xlib_deprecated_errors = 1

if version < 600
  so <sfile>:p:h/glib.vim
  so <sfile>:p:h/gobject.vim
  so <sfile>:p:h/gdk.vim
  so <sfile>:p:h/gdkpixbuf.vim
  so <sfile>:p:h/gtk.vim
  so <sfile>:p:h/gimp.vim
  
  so <sfile>:p:h/atk.vim
  so <sfile>:p:h/atspi.vim
  so <sfile>:p:h/cairo.vim
  so <sfile>:p:h/clutter.vim
  so <sfile>:p:h/dbusglib.vim
  so <sfile>:p:h/evince.vim
  so <sfile>:p:h/gail.vim
  so <sfile>:p:h/gconf.vim
  so <sfile>:p:h/gdkpixbuf.vim
  so <sfile>:p:h/gio.vim
  so <sfile>:p:h/gnomedesktop.vim
  so <sfile>:p:h/gnomevfs.vim
  so <sfile>:p:h/gobjectintrospection.vim
  so <sfile>:p:h/goocanvas.vim
  so <sfile>:p:h/gstreamer.vim
  so <sfile>:p:h/gtkglext.vim
  so <sfile>:p:h/gtksourceview.vim
  so <sfile>:p:h/jsonglib.vim
  so <sfile>:p:h/libglade.vim
  so <sfile>:p:h/libgnome.vim
  so <sfile>:p:h/libgnomecanvas.vim
  so <sfile>:p:h/libgnomeui.vim
  so <sfile>:p:h/libgsf.vim
  so <sfile>:p:h/libnotify.vim
  so <sfile>:p:h/liboil.vim
  so <sfile>:p:h/librsvg.vim
  so <sfile>:p:h/libsoup.vim
  so <sfile>:p:h/libunique.vim
  so <sfile>:p:h/libwnck.vim
  so <sfile>:p:h/orbit2.vim
  so <sfile>:p:h/pango.vim
  so <sfile>:p:h/poppler.vim
  so <sfile>:p:h/vte.vim
  so <sfile>:p:h/xlib.vim
else
  runtime! syntax/glib.vim
  runtime! syntax/gobject.vim
  runtime! syntax/gdk.vim
  runtime! syntax/gdkpixbuf.vim
  runtime! syntax/gtk.vim
  runtime! syntax/gimp.vim

  runtime! syntax/atk.vim
  runtime! syntax/atspi.vim
  runtime! syntax/cairo.vim
  runtime! syntax/clutter.vim
  runtime! syntax/dbusglib.vim
  runtime! syntax/evince.vim
  runtime! syntax/gail.vim
  runtime! syntax/gconf.vim
  runtime! syntax/gdkpixbuf.vim
  runtime! syntax/gio.vim
  runtime! syntax/gnomedesktop.vim
  runtime! syntax/gnomevfs.vim
  runtime! syntax/gobjectintrospection.vim
  runtime! syntax/goocanvas.vim
  runtime! syntax/gstreamer.vim
  runtime! syntax/gtkglext.vim
  runtime! syntax/gtksourceview.vim
  runtime! syntax/jsonglib.vim
  runtime! syntax/libglade.vim
  runtime! syntax/libgnome.vim
  runtime! syntax/libgnomecanvas.vim
  runtime! syntax/libgnomeui.vim
  runtime! syntax/libgsf.vim
  runtime! syntax/libnotify.vim
  runtime! syntax/liboil.vim
  runtime! syntax/librsvg.vim
  runtime! syntax/libsoup.vim
  runtime! syntax/libunique.vim
  runtime! syntax/libwnck.vim
  runtime! syntax/orbit2.vim
  runtime! syntax/pango.vim
  runtime! syntax/poppler.vim
  runtime! syntax/vte.vim
  runtime! syntax/xlib.vim
endif

" vim: set ft=vim :
