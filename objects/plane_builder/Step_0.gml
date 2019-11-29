/// @description Inserte aquí la descripción
if			( red		> 0 && green	> 0)		{ if ( green < 255)	green += 5 else red		-= 5} 
else if ( green	> 0 && blue		> 0 )	{if (	blue	< 255)	blue	+= 5 else green	-= 5} 
else if ( blue		> 0 && red		> 0 )	{if (	red		< 255)	red		+= 5 else blue		-= 5} 
else if ( red		== 255 )							{green	+= 5} 
else if ( green	== 255)							{blue		+= 5} 
else if ( blue		== 255)							{red		+= 5}
color = make_colour_rgb(red, green, blue);
vertex_format_begin();
vertex_format_add_position_3d();	
vertex_format_add_color();			
vertex_format_add_texcoord();		
format = vertex_format_end();
vb_plane = vertex_create_buffer();
vertex_begin(vb_plane, format);
var size = 32;
vertex_position_3d(vb_plane, -size, -size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 0, 0);
vertex_position_3d(vb_plane, size, -size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 1, 0);
vertex_position_3d(vb_plane, -size, size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 0, 1);
vertex_position_3d(vb_plane, -size, size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 0, 1);
vertex_position_3d(vb_plane, size, -size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 1, 0);
vertex_position_3d(vb_plane, size, size, -100);
vertex_color(vb_plane, color, 1);
vertex_texcoord(vb_plane, 1, 1);
vertex_end(vb_plane);