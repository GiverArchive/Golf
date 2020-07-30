if(state == TARGET)
{
	final_x = x + velocidade_x * velocidade;
	final_y = y + velocidade_y * velocidade;
	
	if(final_x >= room_width || final_x <= 0 || !place_free(final_x, y))
	{
		velocidade_x *= -1;
	}
	
	if(final_y >= room_height || final_y <= 0 || !place_free(x, final_y))
	{
		velocidade_y *= -1;
	}
	
	x += velocidade_x * velocidade;
	y += velocidade_y * velocidade;
	
	velocidade -= 0.03;
	
	if(velocidade <= 0)
	{
		velocidade = 0;
		state = NULO
	}
}

if(mouse_check_button_pressed(mb_left))
{
	if(!isPressed)
	{
		isPressed = true;
	}
}

if(isPressed)
{
	isPressed = false;
	
	if(state == NULO)
	{
		state = FORCE;
	}
	else if(state == FORCE)
	{
		state = FINAL;
	}
}

if(state == FORCE)
{
	if(!decre)
	{
		velocidade += increment_velocidade;
	}
	else
	{
		velocidade -= increment_velocidade;
	}
	
	if(velocidade >= max_velocidade || velocidade <= 0)
	{
		decre = !decre;
	}
}

if(state == FINAL)
{
	state = TARGET;
	angle = point_direction(x, y, mouse_x, mouse_y);
	
	velocidade_x = cos(degtorad(angle));
	velocidade_y = -sin(degtorad(angle));
}