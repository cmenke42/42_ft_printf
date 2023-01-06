/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmenke <cmenke@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/22 17:55:10 by cmenke            #+#    #+#             */
/*   Updated: 2022/12/30 14:29:12 by cmenke           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

// Iterates the list ’lst’ and applies the function
// ’f’ on the content of each node.
// checks if 'f' is nor NULL.
void	ft_lstiter(t_list *lst, void (*f)(void *))
{
	t_list	*tmp;

	tmp = lst;
	if (f != NULL)
	{
		while (tmp != NULL)
		{
			f(tmp->content);
			tmp = tmp->next;
		}
	}
}
