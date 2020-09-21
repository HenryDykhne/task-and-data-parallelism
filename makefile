
all: graphics graphicspt data datapt task taskpt

graphics: graphics.c
	gcc graphics.c -o graphics -lncurses -lm 

graphicspt: graphics.c
	gcc graphics.c -o graphicspt -lm -DNOGRAPHICS

data: data.c
	gcc data.c -o data -lncurses -lm -pthread

datapt: data.c
	gcc data.c -o datapt -lm -DNOGRAPHICS -pthread

task: task.c
	gcc task.c -o task -lncurses -lm -pthread

taskpt: task.c
	gcc task.c -o taskpt -lm -DNOGRAPHICS -pthread
