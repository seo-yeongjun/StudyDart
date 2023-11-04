/*
1. 화살표 함수
  ex) (매개변수) => 표현식
2. 클로저
  ex) makeAdder(num addBy) {
        return (num i) => addBy + i;
      }
  // 함수 안에 함수를 정의하는 것

3. 선택적 매개변수
  ex) String say(String from, String msg, [String device]) {
        var result = '$from says $msg';
        if (device != null) {
          result = '$result with a $device';
        }
        return result;
      }
  // 매개변수를 []로 감싸면 선택적 매개변수가 된다.
  // 선택적 매개변수는 함수를 호출할 때 지정할 수도 있고, 생략할 수도 있다.
  // 선택적 매개변수는 반드시 마지막에 위치해야 한다.

4. 기본 매개변수
  ex) String say(String from, String msg, [String device = 'carrier pigeon']) {
        var result = '$from says $msg';
        if (device != null) {
          result = '$result with a $device';
        }
        return result;
      }
  // 선택적 매개변수에 기본 값을 지정할 수 있다.
  // 선택적 매개변수와 기본 매개변수를 동시에 사용할 수 있다.
  // 기본 매개변수는 선택적 매개변수보다 뒤에 위치해야 한다.

5. 이름 있는 매개변수
  ex) String say({required String from, required String msg, String device ='carrier pigeon'}) {
        result = '$from says $msg with a $device';
        return result;
      }
      // 함수 호출
      print(say(from: 'Bob', msg: 'Howdy', device: 'smoke signal'));

*/

// add와 multiply라는 이름의 두 함수를 만들어보세요. 하나는 정수 두 개를 더하고, 다른 하나는 정수 두 개를 곱합니다.
// 매개변수에 기본값을 가지는 함수를 만들어보세요.
// 고차 함수를 만들어서 다른 함수를 매개변수로 받고, 그 함수를 호출하는 새로운 함수를 반환해보세요.
// 클로저를 사용하여 특정 값을 "기억"하는 함수를 만들어보세요.
void main(){

  int add(int a, int b) {
    return a + b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  int addWithDefault(int a, [int b = 10]) {
    return a + b;
  }

  int multiplyWithDefault(int a, [int b = 10]) {
    return a * b;
  }

  Function makeAdder(Function f) {
    return (num i) => f(i);
  }

  Function makeAdder2(num addBy) {
    return (num i) => addBy + i;
  }

  print(add(1,2));
  print(multiply(1,2));
  print(addWithDefault(4));
  print(multiplyWithDefault(4));
  print(makeAdder(addWithDefault)(4));
  print(makeAdder2(4)(4));

}