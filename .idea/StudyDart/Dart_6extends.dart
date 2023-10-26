/*
다트에서 상속과 다형성을 나타내는 방법.

상속은 extends 키워드를 사용한다.
상속은 부모 클래스의 생성자를 호출하지 않는다.
부모 클래스의 생성자를 호출하려면 super 키워드를 사용한다.
부모 클래스의 메서드를 오버라이딩 하려면 @override 어노테이션을 사용한다.

  class animal {
    String name;
    int age;

    animal(this.name, this.age);

    void printInfo() {
      print('name: $name, age: $age');
    }
  }

  class dog extends animal {
    String color;

    dog(String name, int age, this.color) : super(name, age);

    void printDogInfo() {
      print('name: $name, age: $age, color: $color');
    }
  }

  // 추상 클래스
  추상 클래스는 abstract 키워드를 사용하여 선언한다.

      abstract class Animal {
      // 추상 메서드
      void sound();

      // 구현이 있는 일반 메서드
      void eat() {
        print('먹는 중...');
      }
    }

    class Dog extends Animal {
      @override
      void sound() {
        print('멍멍!');
      }
    }

  바디가{} 없는 메서드를 추상 메서드라고 한다.
  추상메서드는 반드시 오버라이딩 해야한다.
 */

// Vehicle이라는 이름의 클래스를 생성합니다. 이 클래스는 move라는 메서드를 포함하며, 이 메서드는 "이동 중..."이라는 메시지를 출력합니다.
// Car와 Bicycle이라는 두 개의 하위 클래스를 생성합니다. 각 클래스는 Vehicle 클래스로부터 상속받습니다.
// Car 클래스는 move 메서드를 오버라이드하여 "차가 달립니다."라는 메시지를, Bicycle 클래스는 "자전거가 달립니다."라는 메시지를 출력하도록 합니다.
// 각 클래스의 객체를 생성하고, move 메서드를 호출하여 결과를 확인합니다.

abstract class Vehicle {
  String name;

  Vehicle(this.name);

  void move() {
    print("이동 중...");
  }

  void printInfo();
}

class Car extends Vehicle {
  Car(String name) : super(name);

  @override
  void move() {
    print("차로");
    super.move();
  }

  void printInfo() {
    print("${super.name}");
  }
}

class Bicycle extends Vehicle {
  Bicycle(String name) : super(name);

  @override
  void move() {
    print("자전거로");
    super.move();
  }

  void printInfo() {
    print("${super.name}");
  }
}

void main() {
  Car car = Car("차");
  Bicycle bicycle = Bicycle("자전거");

  car.move();
  bicycle.move();

  car.printInfo();
  bicycle.printInfo();
}
