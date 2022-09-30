#include <iostream>
#include <math.h>
using namespace std;
int main() {
  int N;
  float a,x,y;
  int signo=-1,i=0;
  float Suma=0,iter;
  do{
    cout<<"Ingrese un número N: ";cin>>N;
    cout<<"Ingrese un número a: ";cin>>a;
    cout<<"Ingrese un número x: ";cin>>x;
    cout<<"Ingrese un número y: ";cin>>y;
  }
  while((N<1||N>30)||(a<1||a>3)||(x<1.2||x>2.5)||(y<1.1||y>1.8));
  while(i<N){
    if(i%2==0)iter=y;
    else iter=x;
    Suma=Suma+((signo*3*(i+1)*iter)/pow(2*a,i));
    i++;
    signo=signo*-1;
  }
  cout<<"La Suma da como resultado: "<<Suma;
}