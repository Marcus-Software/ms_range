import 'package:ms_range/ms_range.dart';

main(){
  Range range = Range(1,20);
  print("Print array 1..20");
  print(range.list);
  print("\nPrint if value is in range");
  print("100 is between 1..20? ${range.isBetween(100)}");
  print("7 is between 1..20? ${range.isBetween(7)}");
  print("20 is between 1..20? ${range.isBetween(20)}");
  
  print("100 is in range 1..20? ${range.isInRange(100)}");
  print("7 is in range 1..20? ${range.isInRange(7)}");
  print("20 is in range 1..20? ${range.isInRange(20)}");
}