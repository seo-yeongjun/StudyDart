/* 다트 비동기

1. Future
  Future는 비동기 작업을 수행할 때 나중에 값이 반환될 것임을 약속하는 객체이다.
  예를 들어 Http 통신을 통해 데이터를 가져올 때, 데이터를 가져오는 작업이 완료되기 전에는
  데이터가 언제 도착할지 알 수 없기 때문에 Future 객체를 통해 데이터를 가져오겠다는 약속을 하고
  데이터가 도착하면 그때 값을 반환하겠다는 약속을 한다.

  ex) 
  Future<String> fetchUserOrder() {
    return Future.delayed(Duration(seconds: 2), () => 'Fetched User Data')
  }; // 2초 후에 'Fetched User Data'를 반환하는 Future 객체를 반환한다.

2. async await
  async await을 사용하면 해당 부분이 끝날 때까지 기다렸다가 다음 코드를 실행할 수 있다.
  async await을 사용하면 Future 객체를 반환하는 함수를 동기적으로 사용할 수 있다.

  ex)
  Future<void> main() async {
    print('Fetching user order...');
    print(await fetchUserOrder());
    print('Done!');
  } // fetchUserOrder 함수가 끝난 뒤 Done!을 출력한다.

  main 함수에서 Future.wait 또는 then을 사용하면 명시적으로 Future 객체가 끝날 때까지 기다릴 수 있다.
  Future.wait은 여러 개의 Future 객체를 동시에 기다릴 수 있고, then은 Future 객체가 끝날 때마다
  콜백 함수를 호출할 수 있다.
*/

// 문제
// fetchUserData 함수를 만들고, 2초 후에 문자열 "Fetched User Data"를 반환하는 Future 객체를 사용하도록 설정해보세요.
// printUserData라는 async 함수를 만들어 fetchUserData 함수의 결과를 기다린 후 콘솔에 출력해보세요.
// main 함수에서 printUserData를 호출하고, 비동기 작업이 완료될 때까지 기다리도록 설정해보세요.


Future<String> fetchUserData1(){
  return Future.delayed(
    Duration(seconds: 2), (){
      return "Fetched User Data";
    }
  );
}

Future<String> fetchUserData2() => Future.delayed(Duration(seconds: 2), () => "Fetched User Data");

Future<void> printUserData() async{
  print(await fetchUserData1());
  print(await fetchUserData2());
}

void main(){
  printUserData().then((_){print("Done!");});
  Future.wait([fetchUserData1(), fetchUserData2()]).then((value) => print(value));
}