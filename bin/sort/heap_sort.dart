void main(){
  display(100);
}

void display(int x){
  print(x);
  if(x<=1){
    return;
  }
  display(x-1);
  display(x-1);
}