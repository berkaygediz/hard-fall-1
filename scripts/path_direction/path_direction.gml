function path_direction() {
	var f; f = 1 / path_get_length(path_index);
	return(
	  point_direction(
	    path_get_x(path_index, path_position),
	    path_get_y(path_index, path_position),
	    path_get_x(path_index, path_position + f),
	    path_get_y(path_index, path_position + f)
	  )
	);



}
