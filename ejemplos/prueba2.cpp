#include <iostream>
#include <math.h>
using namespace std;
int main(){
  int op,n;
  int i=1,j=1,aux=0,aux1=1;
  cout<<"DIBUJAR UNA FIGURA\n------------------\n[1] Cuadrado\n[2] Triángulo\n";
  do{
    cout<<"Elija una opción: > ";cin>>op;
  }while(op!=1&&op!=2);
  cout<<endl;
  //do{
    cout<<"Ingrese un número n: 4<=n<=6: ";cin>>n;
  //}while(n<4||n>6);
  if(op==1){
    while(i<=pow(n,2)){
      cout<<"   ";
      j=1;
      while(j<=pow(n,2)){
        if((i==1+aux||i==n+aux)&&(j>=1+aux&&j<=n+aux))cout<<"*";
        else if(j==1+aux||j==n+aux)cout<<"*";
        else if(j==2+aux&&i==2+aux)cout<<aux1;
        else cout<<" ";
        j++;
      }
      if(i%n==0){
        aux=aux+n;
        aux1++;
      }
      cout<<endl;
      i++;
    }
  }
  else if(op==2){
    while(i<=pow(n,2)){
      cout<<"   ";
      j=1;
      while(j<=pow(n,2)){
        if((i==n+aux)&&(j>=1+aux&&j<=n+aux))cout<<"*";
        else if(j==1+aux)cout<<"*";
        else if(i==j)cout<<"*";
        else if(j==2+aux&&i==3+aux)cout<<aux1;
        else cout<<" ";
        j++;
      }
      if(i%n==0){
        aux=aux+n;
        aux1++;
      }
      cout<<endl;
      i++;
    }
  }
}