/*
  외부 패키지를 사용하기 위해서는 pubspec.yaml 파일에 패키지를 추가해야 한다.
  pubspec.yaml 파일은 프로젝트의 루트 디렉토리에 위치한다.
  pubspec.yaml 파일에 패키지를 추가하면 dart pub get 명령어를 통해 패키지를 설치할 수 있다.

  pubspec.yaml 파일에 패키지를 추가하는 방법은 다음과 같다.

  dependencies:
    패키지명: 패키지 버전
  dev_dependencies:
    패키지명: 패키지 버전
  flutter:
    assets:
      - 이미지 파일 경로
      - 폰트 파일 경로

  현재 pubspec.yaml에 http 패키지를 추가해 두었다.
 */

import 'package:http/http.dart' as http;

void main() {
  // var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  //
  // final http.Response response = await http.get(url);
  //
  // if (response.statusCode == 200) {
  //   print(response.body);
  // }
  http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
      .then((response) { if(response.statusCode == 200) print(response.body); });
}
