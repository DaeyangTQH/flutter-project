import 'dart:async';

void main(){
  print("Sync job!"); // Tác vụ đồng bộ - chạy luôn

  // Đưa tác vụ vào Event queue(Hàng đợi thông thuờng)
  Future(() {
    print("Async job - Event queue!");
  });

  // Đưa tác vụ vào Microtask Queue(Hàng đợi ưu tiên cao nhất)
  scheduleMicrotask(() {
    print("Microtask job - Microtask Queue!");
  });

  print("End!");
}


// Dart có 1 Event Loop, với Microtask Queue và Event Queue
// Dart tạo 1 isolate để thực thi code
// Một isolate có: Call Stack, Microtask Queue, Event Queue, Event Loop
