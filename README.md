# CIS3090A1
1) use make to create data, datapt, task and taskpt
2) run datapt with ./datapt -i #iterations -points #points -threads #threads
3) run taskpt with ./taskpt -i #iterations -points #points

For the data program, I paralelized the two loops in movePoints responsible for transforming the points and for filling the depth and frame buffer. This has a significant effect on speed when more threads are added.

For the task program, I paralelized the code such that clearing buffers runs in paralell with transforming the points. This has a negligable effect on speed. I also made the vector multiplication function paralell with the code responsible for setting the result array to zero, running in parallell with the code responsible for filling the array. To ensure no race conditions, mutex locks are set up to ensure the thread responsible for setting the result array to zero is always ahead of the other thread, and thus works like a pipeline. This is horifficaly ineficient and makes up all of the slowdown (200 times slower than serial code).