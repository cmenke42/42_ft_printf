/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmenke <cmenke@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/18 12:40:07 by cmenke            #+#    #+#             */
/*   Updated: 2022/12/30 12:57:58 by cmenke           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//*s is source from which to create the substring.
//start is the index of which to start in s.
// Return NULL if allocation fails else the substring.
// substring is at least '\0' or 
//(ft_Strlen(s) - start) if smaller len, or len.
char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char			*substring;
	size_t			i;
	unsigned int	length;

	length = (unsigned int)ft_strlen(s);
	if (start >= length)
		len = 0;
	else if (start < length)
		length = length - start;
	if (length < len)
		len = length;
	substring = malloc((len + 1) * sizeof(char));
	if (substring == NULL)
		return (NULL);
	i = -1;
	while (++i < len && s[start + i] != '\0')
		substring[i] = s[start + i];
	substring[i] = '\0';
	return (substring);
}
