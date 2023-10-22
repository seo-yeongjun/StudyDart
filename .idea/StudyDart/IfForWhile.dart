/*
1.if, else if, else 문으로 조건문을 사용할 수 있다.
2. for, while 문으로 반복문을 사용할 수 있다.

if 문
      int number = 10;

      if (number > 5) {
          print('Number is greater than 5');
      } else if (number == 5) {
          print('Number is 5');
      } else {
          print('Number is less than 5');
      }

for문
      for (int i = 0; i < 5; i++) {
          print('Hello $i');
      }

whjle문
      int i = 0;
      while (i < 5) {
          print('Hello $i');
          i++;
      }

 */

// 1에서 10까지 짝수만 출력하라.
void main() {
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) print(i);
  }
}
