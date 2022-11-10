import 'package:flutter/material.dart';

//const는 앱이 빌드되면서 myapp이 실행 -> 메모리에 한번만!!! 올리고 싶을때 사용 -> 변수자체가 다 1급개체라서 힙에 뜬다.
//파일이 읽어지고 바로 뜸 -> 해당 파일을 어디 임포트할때 뜬다.한번 메모리에 들어가면 수정불가 (read only)
//final은 읽을때마다 뜸 -> 한번 메모리에 들어가면 수정불가 (read only)

const kAccentColor = Color(0xFFFF385c); //상호작용하는 컴포넌트 -> 클라이언트와 상호작용하는 상수같은거
