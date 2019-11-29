/// @description Insert description here
red = 255;
green=0;
blue=0;
color = make_colour_rgb(red, green, blue);

vertex_format_begin();
vertex_format_add_position_3d();	//Add 3D position info
vertex_format_add_color();				//Add color info
vertex_format_add_texcoord();		//Texture coordinate info

format = vertex_format_end();		//End building the format, and assign the format to the variable "format"

//Create the vertex buffer. Another function, vetex_create_buffer_ext can be used to create the buffer with its size predefined and fixed. 
//With the standard vertex_create_buffer, the buffer will just grow automatically as needed.
vb_plane = vertex_create_buffer();

vertex_begin(vb_plane, format);		//Begin building the buffer using the format defined previously
var size = 32;											//Using size to keep it square if we decide to change how bug it is.

//Add the six vertices needed to draw a simple square plane. 
//The normals are all pointing to (0,0,-1) (upward, in our case)

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