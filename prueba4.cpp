#include <iostream>
using namespace std;
int main() {
  int i=1,j=1;
  int N,E;
  bool miau=true;
  do{
   cout<<"Ingrese un número [2;9]: ";cin>>N; //Ingreso de dato
   if(N>=2&&N<=9){//Accionador del permiso de seguir
     miau=false;
   }
   else{
     cout<<"¡ ERROR !\n";//Consecuente del error
   }
  }
  while(miau==true);//Accionador del error
  E=N;
  while(i<=(N*3)-2){
    j=1;
    while(j<=(N*3)-2){
      if((j==N+1-i)&&(i>=1&&i<=N))cout<<"██";
      else if((j==(3*N-2)-N+E)&&(i>=((N*2)-1)&&i<=((N*3)-2)))cout<<"██";

      else if((j==((2*N)-1)-1+i)&&(i>=1&&i<=N))cout<<"██";
      else if((j==1+N-E)&&(i>=((N*2)-1)&&i<=((N*3)-2)))cout<<"██";

      else if((j>N && j<(N*2)-1)&&(i==1||i==(N*3)-2))cout<<"██";
      else if((i>N && i<(N*2)-1)&&(j==1||j==(N*3)-2))cout<<"██";
      
      else cout<<"  ";
      j++;
    }
    if(i>=(2*N)-1)E--;
    cout<<endl;
    i++;
  }
  cout<<endl;
  cout<<"------PROGRAMA FINALIZADO-------";
}