/// @description define hp bar render function
function render_healthbar(){
	var bar_width = 50;
	var bar_height = 5;
	var bar_x1 = x - bar_width / 2;
	var bar_y1 = y - sprite_height / 2 - bar_height - 5;
	var bar_x2 = bar_x1 + bar_width;
	var bar_y2 = bar_y1 + bar_height;

	var health_percentage = currhealth / maxhealth;


	draw_set_color(c_black);
	draw_rectangle(bar_x1, bar_y1, bar_x2, bar_y2, false);

	draw_set_color(healthbar_color);
	draw_rectangle(bar_x1, bar_y1, bar_x1 + (bar_width * health_percentage), bar_y2, false); 

	draw_set_color(c_white);
	draw_rectangle(bar_x1, bar_y1, bar_x2, bar_y2, true);
}