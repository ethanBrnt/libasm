/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eburnet <eburnet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/30 09:54:11 by eburnet           #+#    #+#             */
/*   Updated: 2025/10/01 14:20:34 by eburnet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

extern size_t ft_strlen(const char *str);
extern char *ft_strcpy(char *dst, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);
extern size_t ft_write(int fd, const void *buf, size_t count);
extern size_t ft_read(int fd, void *buf, size_t count);
extern char *ft_strdup(const char *s);

int main() {
	printf("ft_strlen test:\n");
	const char *msg = "Hello, Assembly!";
	size_t len = ft_strlen(msg);
	printf("len de %s: %zu\n", msg, len);

	printf("\nft_strcpy test:\n");
	char dest[] = "AAAAAAAAAA";
	char *src;
	src = malloc(sizeof(char) * 10);
	src = "coucou";
	printf("src: %s\n", src);
	printf("dest: %s\n", dest);
	printf("returned dest: %s\n", ft_strcpy(dest, src));
	printf("diff: %d\n", strcmp(src, dest));
	printf("src: %s\n", src);
	printf("dest: %s\n", dest);
	printf("Memset\n");
	src = "hey"; 
	printf("src: %s\n", src);
	printf("dest: %s\n", dest);

	printf("\nft_strcmp test:\n");
	char s1[] = "coucou";
	char s2[] = "coucou";
	printf("s1: %s\n", s1);
	printf("s2: %s\n", s2);
	printf("diff ft: %d\n", ft_strcmp(s1, s2));
	printf("diff officiel: %d\n", strcmp(s1, s2));

	printf("\nft_write test:\n");
	char str[] = "salut ft_write\n";
	printf("ret val: %ld\n", ft_write(1, str, sizeof(str)));

	printf("\nft_read test:\n");
	char str_read[50000];
	str_read[50000] = '\0';
	printf("ret val: %ld\n", ft_read(0, str_read, sizeof(str_read)));
	printf("str: %s\n", str_read);

	printf("\nft_strdup test:\n");
	char str_dup[] = "hello hellooooo";
	printf("dup str: %s\n", ft_strdup(str_dup));

	return 0;
}
