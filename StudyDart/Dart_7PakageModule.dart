/*
import

기본 패키지
import 'dart:math';
import 'dart:io';

플러터 패키지 pubspec.yaml에 추가
import 'package:flutter/material.dart';

같은 프로젝트의 다른 파일
import 'path/Dart_7PakageModule.dart';

특정 클래스만 가져오기
import 'path/Dart_7PakageModule.dart' show Car; // Car만 가져옴
import  'path/Dart_7PakageModule.dart' hide Car; // Car를 제외한 모든 클래스 가져옴
*/

import 'Dart_6extends.dart';

void main(){
  Car car = Car("차");
  Bicycle bicycle = Bicycle("자전거");

  car.move();
  bicycle.move();

  car.printInfo();
  bicycle.printInfo();
}