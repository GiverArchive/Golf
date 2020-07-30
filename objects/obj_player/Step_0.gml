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

if(state = FORCE)
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