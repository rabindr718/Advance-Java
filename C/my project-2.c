#include<stdio.h>
#include<stdlib.h>
struct node
{
    int data;
    struct node *next;
};
struct node *head;
void insert(int x)
{
    struct node *link=(struct node*)malloc(sizeof(struct node));
    link->data=x;
    link->next=head;
    head=link;
}
void display()
{
    struct node *ptr=head;
    printf("list is : ");
    while(ptr!=NULL)
    {
        printf(" %d",ptr->data);
        ptr=ptr->next;
    }
    printf("\n");
}
void main()
{
    int t,n;
    printf("enter 1 for insert:\nenter 2 for display: ");
    scanf("%d",&t);
    switch(t)
    {
      case 1: printf("enter the value which you want to insert : ");
              scanf("%d",&n);
              insert(n);
              break;
      case 2: display();
               break;
    }
}
