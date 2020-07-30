if(mouse_check_button_pressed(mb_left))
{
	if(!isPressed)
	{
		isPressed = true;
	}
}

if(isPressed)
{
	if(velocidade < max_velocidade)
	{
		velocidade += increment_velocidade;
	}
}