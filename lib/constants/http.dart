import 'package:dio/dio.dart';

// http 통신
final dio = Dio(
  BaseOptions(
    // baseUrl: "http://172.20.10.4:8080", // 내 IP 입력
    baseUrl: "http://192.168.0.37:8080", // 내 IP 입력
    contentType: "application/json; charset=utf-8",
  ),
);

// 휴대폰 로컬에 파일로 저장
// const secureStorage = FlutterSecureStorage();
