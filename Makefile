# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eburnet <eburnet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/28 09:11:20 by eburnet           #+#    #+#              #
#    Updated: 2024/08/28 09:11:20 by eburnet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
ASM = nasm
ASFLAGS = -f 
SRCS = ft_strlen.s # ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS) 
	$(ASM) $(ASFLAGS) $(OBJS) -o $(NAME).a

%.o : %.s
    $(ASM) $(ASFLAGS) -o $@ $<

clean:
	rm *.o

fclean: clean
	rm -f $(NAME).a

re: fclean all

.PHONY : all clean fclean re