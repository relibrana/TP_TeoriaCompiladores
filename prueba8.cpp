#include <iostream>

using namespace std;

int main(){

    bool a = 1;
    int b = 0;
    while(a){
        if(rand()%100 == 10){
            a = 0;
        }
        b = b + 1;
    }
    cout << b;

    return 0;
}