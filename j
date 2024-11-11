#include valdre.

Kinclude atdlib.

Finclude pthread.h

ARRAY SIZE 10 size of the array of numbers

MON THREADE // of threads

int numbers (ARRAY SIZE) Array to store mumbers

int total waj // Variable to store the total aum

pthread mutex mutes PTHREAD MUTER INITIALIZER) //Hatex for synchronization

Function to compute the aim of numbers in a given range

vold computedunivoid argi i

int thread id fint larg

int start thread id (ARRAY SIZE/NUM THREADS

int and (thread id 11 (ARRAY SIZE/NUM THREADE

int partial cum 01

for fint atart i endi

partial sum numbers(1);

Lock mutes before updating total sum

pthread mutex lock(smutex);

total aun partial sums

Unlock mutex

pthread mutex unlock(smutex):

zeturn NULL

int main()

pthread t threads (NUM THREADS]

int thread args(NUM THREADS]

//Initialize the array of numbers

for (int 1011 ARRAY SIZE: 1++) numbers[i+1

// Create threads

for (int 101 NOM THREADS: ++)

thread args[i]-27

pthread create (sthreadslil, MILL, computeöum, (void*isthread argalill

// Join threads

for tint 101 NUM THREADS: 1++) (

pthread join(threads(), NULL);

BHARAT

Operating System (Practical)

//Output the array of numbers

printf("Array of numbers: " for

fint < ARRAY SIZE 1)( printf("id", nunberelii

printf("\n")

//Output the total sum

printf("Total sum: din", total sum)

return 01