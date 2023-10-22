/*
다트에는 아래와 같은 기본 데이터 타입이 있습니다.

- 숫자
  -int (정수)
  -double (부동 소수점)
- 문자열
  -String
- 참/거짓
  -bool
- 리스트
  -List
- 맵
  -Map

다트에는 두가지 변수 선업 방식이 있습니다.
- var
  - 타입이 추론되어 자동으로 지정됩니다.
- int String ...
  - 타입을 직접 지정합니다.
*/

void main(){
String name = '서영준';
int age = 25;
double height = 172.5;

print("이름: $name\n나이: $age\n키: $height");
}

/* 배운 것 정리
1. 변수를 선언할 때는 var 또는 타입을 직접 지정합니다.
2. 변수를 출력할 때는 $변수명 을 사용합니다.
*/