void main(){

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

print("Numbers = $numbers");

for(int even in numbers){
    if( even % 2 == 0){
        print("Even number = $even");
    }
  }
}