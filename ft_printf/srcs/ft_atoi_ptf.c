/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_ptf.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmissy <cmissy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/10 13:42:28 by cmissy            #+#    #+#             */
/*   Updated: 2021/01/10 13:42:28 by cmissy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int		ft_atoi_ptf(const char *str)
{
	int					sign;
	unsigned long int	res;

	sign = 1;
	res = 0;
	while (*str == 32 || (*str >= 9 && *str <= 13))
		str++;
	if (*str == '-')
		sign = -1;
	if (*str == '-' || *str == '+')
		str++;
	while ((*str != '\0') && (*str >= '0' && *str <= '9'))
	{
		res = (res * 10) + (*str++ - '0');
		if (res >= 9223372036854775807 && sign == 1)
			return (-1);
		else if (res > 9223372036854775807 && sign == -1)
			return (0);
	}
	return ((int)(res * sign));
}
