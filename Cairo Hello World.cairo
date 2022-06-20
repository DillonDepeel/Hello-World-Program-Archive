implement
main0 () = () where {

val sf = // create a surface for drawing
  cairo_image_surface_create (CAIRO_FORMAT_ARGB32, 250, 80)
//
val cr = cairo_create (sf) // create a context for drawing
//
val () = cairo_select_font_face
  (cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD)
val () = cairo_set_font_size (cr, 32.0)

val () =
  cairo_set_source_rgb (cr, 0.0(*r*), 0.0(*g*), 1.0(*b*))
val () = cairo_move_to (cr, 10.0, 50.0)
val () = cairo_show_text (cr, "Hello, world!")
//
val status =
  cairo_surface_write_to_png (sf, "tutprog_hello.png")
val () = cairo_destroy (cr) // a type error if omitted
val () = cairo_surface_destroy (sf) // a type error if omitted
//
// in case of a failure ...
//
val () = assertloc (status = CAIRO_STATUS_SUCCESS)
//
} (* end of [main0] *)
