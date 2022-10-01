#include <iostream>

using namespace std;

int main(){
    int a, b;
    double c;
    a = 1;
    b = 0;
    c = 100.5;
    while(c > 5){
        b = a + (100%2);
        c = c / 2;
    }
    cout << c;

    return 0;
}