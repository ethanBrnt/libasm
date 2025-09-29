#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

extern size_t ft_strlen(const char *str);
extern char *ft_strcpy(char *dst, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);

int main() {
    printf("ft_strlen test:\n");
    const char *msg = "Hello, Assembly!";
    size_t len = ft_strlen(msg);
    printf("len de %s: %zu\n", msg, len);

    printf("\nft_strcpy test:\n");
    char dest[10]; memset(dest, 'A', sizeof dest);
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
    return 0;
}
