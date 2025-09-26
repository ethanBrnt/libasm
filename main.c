#include <stdio.h>
#include <stddef.h>

// Declare the assembly functions
extern size_t ft_strlen(const char *str);

int main() {
    // Test my_strlen
    const char *msg = "Hello, Assembly!";
    size_t len = ft_strlen(msg);
    printf("Length of '%s': %zu\n", msg, len);

    return 0;
}



