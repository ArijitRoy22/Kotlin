#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<time.h>
#define size 9

bool check(int arr[9][9],int num,int row,int col)
{
    int rowStart=(row/3)*3,colStart=(col/3)*3;
    for(int i=0;i<size;i++)
    {
        if(arr[row][i]==num)
            return false;
        if(arr[i][col]==num)
            return false;
        if(arr[rowStart+(i%3)][colStart+(i/3)]==num)
            return false;
        
    }
    return true;
}
int fill_unique(int arr[9][9], int row, int col)
{
    if(row == size-1 && col==size)
        return 1;

    if(col == size)
    {
        row++;
        col =0;
    }

    if(arr[row][col]>0)
    {
        return fill_unique(arr,row,col+1);
    }

    for(int i=1;i<10;i++)
    {
        i=(rand()%9)+1;
        if(check(arr,i,row,col))
        {
            arr[row][col]=i;
            if(fill_unique(arr,row,col+1))
                return 1;
            
        }
        arr[row][col]=0;   
    }
    return 0;
}

int main()
{
    srand(time(NULL));
    int a[9][9]={0};
    int n;

    printf("Enter any number between 1 to 9: ");
    scanf("%d",&n);
    while(n>9 | n<1)
    {
        if(n>9)
        {
            printf("Please enter a lower number than 9\n\n");
        }
        if(n<1)
        {
            printf("Please enter a higher number than 0\n\n");
        }
        printf("Enter any number between 1 to 9: ");
        scanf("%d",&n);
    }
    a[0][0]=n;
    fill_unique(a,0,1);

    printf("-------------------\n");
    for (int i = 1; i <= size; i++)
    {
        for (int j = 1; j <=size; j++)
        {
            printf("|%d",a[i-1][j-1]);
        }
        printf("|\n");
        if(i%3 == 0)
        {
            printf("-------------------\n");
        }       
    }
}