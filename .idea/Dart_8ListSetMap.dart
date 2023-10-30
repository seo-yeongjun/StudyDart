/*
다트는 List, Set, Map 등의 컬렉션을 지원한다.
List는 배열과 같은 순서가 있는 컬렉션이다.
Set은 중복을 허용하지 않는 컬렉션이다.
Map은 키와 값의 쌍으로 이루어진 컬렉션이다.


List 선언
List<int> list = [1, 2, 3];

Set 선언
Set<int> set = {1, 2, 3};

Map 선언
Map<String, int> map = {
  'a': 1,
  'b': 2,
  'c': 3
};

List, Set, Map은 모두 Iterable인터페이스를 구현하고 있다.
List<int> list = [1, 2, 3];
  1. forEach
    list.forEach((item) => print(item)); // 1, 2, 3
  2. map 
    list.map((item) => item * 2); // [2, 4, 6]
  3. where
    list.where((item) => item > 2); // [3]
  4. any
    list.any((item) => item > 2); // true
  5. every
    list.every((item) => item > 2); // false
  6. reduce
    list.reduce((value, element) => value + element); // 6
  7. toList
    list.toList(); // [1, 2, 3]
  8. toSet
    list.toSet(); // {1, 2, 3}

List 메서드
List<int> list = [1, 2, 3];

  1. add
    list.add(4);// [1, 2, 3, 4]
  2. insert
    list.insert(1, 10);// [1, 10, 2, 3]
  3. remove
    list.remove(1);// [2, 3]
  4. removeAt
    list.removeAt(1);// [1, 3]
  5. removeLast
    list.removeLast();// [1, 2]
  6. removeWhere
    list.removeWhere((item) => item > 3); // [1, 2, 3]
  7. clear
    list.clear(); // []
  8. sort
    list.sort(); // [1, 2, 3]
    list.sort((a, b) => b.compareTo(a)); // [3, 2, 1]

Set 메서드
Set<int> set = {1, 2, 3};

  1. add
    set.add(4); // {1, 2, 3, 4}
  2. remove
    set.remove(1); // {2, 3}
  3. clear
    set.clear(); // {}
  4. contains
    set.contains(1); // false
  5. union
    set.union({4, 5}); // {1, 2, 3, 4, 5}

Map 메서드
Map<String, int> map = {
  'a' : 1,
  'b' : 2,
  'c' : 3
}

  1. addAll
    map.addAll({'d' : 4}); // {'a' : 1, 'b' : 2, 'c' : 3, 'd' : 4}
  2. remove
    map.remove('a'); // {'b' : 2, 'c' : 3}
  3. clear
    map.clear(); // {}
  4. containsKey
    map.containsKey('a'); // true
  5. containsValue
    map.containsValue(1); // true
  6.putIfAbsent // 키가 존재하지 않으면 추가
    map.putIfAbsent('a', () => 1); // {'a' : 1, 'b' : 2, 'c' : 3}
  7. keys
    map.keys; // ['a', 'b', 'c']
  8. values
    map.values; // [1, 2, 3]

*/

//실습:
// 정수 값들로 이루어진 List를 생성하고, 그 안에 1부터 10까지의 숫자를 추가해보세요.
// 문자열 값들로 이루어진 Set를 생성하고, 여러 가지 색상 이름 (예: 'red', 'green', 'blue' 등)을 추가해보세요.
// 동물 이름을 키로, 그 동물의 나이를 값으로 갖는 Map을 생성해보세요.
void main(){
  List<int> numList = [];
  Set<String> colorSet = {};
  Map<String, int> animalHeightAgeMap = {};

  //리스트에 1~10 추가
  for(int i = 1; i <= 10; i++){
    numList.add(i);
  }

  //셋에 색상 추가
  colorSet.add("red");
  colorSet.add("green");
  colorSet.add("blue");

  //맵에 동물 이름과 나이 추가
  animalHeightAgeMap["cat"] = 3;
  animalHeightAgeMap["dog"] = 5;
  animalHeightAgeMap["rabbit"] = 1;

  //출력
  print(numList);
  print(colorSet);
  print(animalHeightAgeMap);
}