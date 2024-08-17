if showmessage
{// draw_set_valign(fa_bottom)
	draw_set_valign(fa_top)
	draw_rectangle_color(50,420,910,520,c_white,c_white,c_white,c_white,false)
	// draw_rectangle_color(50,640,1316,740,c_black,c_black,c_black,c_black,true)
	draw_rectangle_ext(50,420,910,520,c_black,2)
	draw_text_ext(60,430,string_upper(dialog[dialogcount]), 36, 840)
	draw_set_valign(fa_top)}
// draw_text_ext(800,700,string(dialogcount), 24, 500)