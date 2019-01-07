/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sdelhomm <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/07 10:09:42 by sdelhomm          #+#    #+#             */
/*   Updated: 2017/11/14 14:55:32 by sdelhomm         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

int		ft_strcmp(const char *s1, const char *s2)
{
	int i;
	int j;

	i = 0;
	j = 0;
	while ((s1[i] != '\0' || s2[i] != '\0') && j == 0)
	{
		if (s1[i] != s2[i])
		{
			j = ((unsigned char)s1[i]) - ((unsigned char)s2[i]);
		}
		i++;
	}
	return (j);
}
