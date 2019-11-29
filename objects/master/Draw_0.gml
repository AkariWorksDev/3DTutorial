/// @description Insert description here
// You can write your code in this editor
#macro sdm show_debug_message

//sdm("Drawing");
var scale = 16;
var mat = matrix_build(g.camX, g.camY, g.camZ + scale * 5, 0, 0, point_direction(g.camX, g.camY, room_width / 2, room_height / 2),  scale, scale, - scale);
//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Draw the buffer
//vertex_submit(vb_plane, pr_trianglelist, -1);
vertex_submit(g.ARMS, pr_trianglelist, -1);

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());


//vertex_submit(g.ARMS, pr_trianglelist, -1);