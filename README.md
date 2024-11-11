ki# Myblog

hii this is new user
<br>
hi this is second user

#include <stdio.h>

int main() {
    int pid[15], bt[15], wt[15], n;
    float twt = 0.0, tat = 0.0, att, awt;

    printf("Enter the number of processes: ");
    scanf("%d", &n);

    if (n > 15) {
        printf("Number of processes exceeds maximum allowed (15).\n");
        return 1;
    }

    printf("Enter process id of all the processes: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &pid[i]);
    }

    printf("Enter burst time of all the processes: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &bt[i]);
    }

    // Sorting burst times and process IDs based on burst times
    for (int i = 0; i < n - 1; i++) {
        int pos = i;
        for (int j = i + 1; j < n; j++) {
            if (bt[j] < bt[pos]) {
                pos = j;
            }
        }

        // Swap burst times
        int temp = bt[i];
        bt[i] = bt[pos];
        bt[pos] = temp;

        // Swap process IDs
        temp = pid[i];
        pid[i] = pid[pos];
        pid[pos] = temp;
    }

    wt[0] = 0; // Waiting time of first process is zero

    // Calculate waiting times
    for (int i = 1; i < n; i++) {
        wt[i] = bt[i - 1] + wt[i - 1];
    }

    printf("Process ID\tBurst Time\tWaiting Time\tTurnaround Time\n");

    // Calculate and print turnaround time and average waiting time
    for (int i = 0; i < n; i++) {
        int tat_i = bt[i] + wt[i];
        printf("%d\t\t%d\t\t%d\t\t%d\n", pid[i], bt[i], wt[i], tat_i);

        twt += wt[i];
        tat += tat_i;
    }

    awt = twt / n;
    att = tat / n;

    printf("Avg. waiting time = %f\n", awt);
    printf("Avg. turnaround time = %f\n", att);

    return 0;
}




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
