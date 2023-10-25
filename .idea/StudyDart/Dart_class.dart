/*
다트는 클래스 기반의 객체지향 언어이다.

클래스 선언 방법
       class Person {
       // 멤버 변수
       String name;
       int age;

       // 생성자1
       Person(String name, int age) {
        this.name = name;
        this.age = age;
       }

       // 생성자2
        Person(this.name, this.age);

        // 메서드
        void greeting() {
        print('안녕하세요 저는 $name입니다. $age살 입니다.');
        }
      }

클래스 사용
      void main() {
      Person person1 = new Person('홍길동', 20); -- 다트2.0 이후 new 키워드 생략 가능
      Person person2 = Person('홍길동', 20);

      person1.greeting();
      }
 */

//Car라는 이름의 클래스를 생성합니다.
//brand (브랜드)와 year (제조 연도)라는 두 개의 속성을 포함합니다.
//해당 클래스에는 자동차의 정보를 출력하는 displayInfo라는 메서드를 포함합니다.
//Car 클래스의 객체를 생성하고, displayInfo 메서드를 호출하여 자동차의 정보를 출력합니다.

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void displayInfo(){
    print("브랜드 ${this.brand} 제조년도: ${this.year}");
  }
}

void main(){
  Car car = Car("Hyndai", 2023);

  car.displayInfo();
}
