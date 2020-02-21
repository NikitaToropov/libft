/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_allisdigit.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmissy <cmissy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/21 10:46:43 by cmissy            #+#    #+#             */
/*   Updated: 2020/02/21 10:51:06 by cmissy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int			ft_allisdigit(const char *str)
{
	int		i;

	i = 0;
	while (str[i])
	{
		if (ft_isdigit(str[i]))
			return (0);
		i++;
	}
	return (1);
}
