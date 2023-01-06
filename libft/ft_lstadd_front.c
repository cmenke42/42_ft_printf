/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmenke <cmenke@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/22 12:20:13 by cmenke            #+#    #+#             */
/*   Updated: 2022/12/30 12:49:09 by cmenke           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//with new->next we change the address for the next chain link.
//with *list we say where the chain starts.
void	ft_lstadd_front(t_list **lst, t_list *new)
{
	new->next = *lst;
	*lst = new;
}
