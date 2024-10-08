/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hexadecimals.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssandova <ssandova@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/17 19:44:02 by ssandova          #+#    #+#             */
/*   Updated: 2023/11/21 18:25:14 by ssandova         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_printf.h"

static int	ft_hexa_lower(unsigned long num)
{
	int			size;
	const char	*str;

	str = "0123456789abcdef";
	size = 0;
	if (num < 16)
	{
		size += ft_printchar(str[num]);
	}
	else
	{
		size += ft_hexa_lower(num / 16);
		size += ft_hexa_lower(num % 16);
	}
	return (size);
}

static int	ft_hexa_upper(unsigned long num)
{
	int			size;
	const char	*str;

	str = "0123456789ABCDEF";
	size = 0;
	if (num < 16)
		size += ft_printchar(str[num]);
	else
	{
		size += ft_hexa_upper(num / 16);
		size += ft_hexa_upper(num % 16);
	}
	return (size);
}

int	ft_hexadecimal(unsigned long num, const char format)
{
	int	size;

	size = 0;
	if (format == 'x')
		size += ft_hexa_lower(num);
	else if (format == 'X')
		size += ft_hexa_upper(num);
	return (size);
}

int	ft_pointer(unsigned long ptr)
{
	int	size;

	size = 0;
	size += ft_printstr("0x");
	if (ptr == 0)
		size += ft_printchar('0');
	else
		size += ft_hexadecimal(ptr, 'x');
	return (size);
}
