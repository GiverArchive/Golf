if(state == TARGET)
{
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