/*
1. 함수 생성
    void greet(String name) {
      print('Hello, $name!');
    }

    int add(int a, int b) {
      return a + b;
    }
의 형식으로 함수를 선언할 수 있다.

2. 매개 변수 이름 지정
      void displayInfo({String name, int age}) {
        print('이름: $name, 나이: $age');
      }

      // 함수 호출
      displayInfo(name: '영준', age: 25);
{}를 사용하여 매개 변수 이름을 지정할 수 있다.
{}를 사용하여 선언한 함수를 호출 할떄는 반듯이 매개 변수 이름을 지정해야한다.
 */

/*
두 숫자를 인수로 받아 그 합, 차, 곱, 나눗셈 값을 반환하는 네 개의 함수를 작성합니다.
이 함수들을 호출하여 결과를 출력합니다.
 */
void main() {
  int add(int a, int b) {
    return a + b;
  }

  int sub(int a, int b) {
    return a - b;
  }

  int mul(int a, int b) {
    return a * b;
  }

  double div(int a, int b) {
    return a / b;
  }

  void printResult(int a, int b) {
    print('덧셈 결과: ${add(a, b)}');
    print('뺄셈 결과: ${sub(a, b)}');
    print('곱셈 결과: ${mul(a, b)}');
    print('나눗셈 결과: ${div(a, b)}');
  }

  void test(int a,d,{b,c}){
    print(a+b+c);
  }

  test(3,'g',b:1);
}
