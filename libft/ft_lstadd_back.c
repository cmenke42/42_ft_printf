/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmenke <cmenke@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/22 15:43:58 by cmenke            #+#    #+#             */
/*   Updated: 2022/12/30 12:49:02 by cmenke           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//adds new node at the end of chain.
//changes the next pointer from the current last one to the addres of new node.
//checks fo an empty list (NULL).
void	ft_lstadd_back(t_list **lst, t_list *new)
{
	if (*lst == NULL)
		*lst = new;
	else
		ft_lstlast(*lst)->next = new;
}
