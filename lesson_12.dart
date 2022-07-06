void main() {
  // List myList = <int>[1, 2, 3, 4, 5];

  // myList.forEach((item) {
  //   print(item * item);
  // });

  // var res = myList.map((e) => e * e).toList();
  // print(res);

  // var resu = myList.where((element) => element > 3).toList();
  // print(resu);

  // int resul = myList.reduce((value, element) {

  //   return value + element;
  // });

  // bool result = myList.every((element) => element > 0);
  // print(result);

  // bool resultt = myList.any((element) => element > 3);
  // print(resultt);

  // 1) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
// элемент этого массива.

  List<int> someList = List.generate(10, (index) => index + 1);
  print(someList);

  var a = someList.forEach((element) => print(element));

// 2) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
// элемент в кубе.

  var b = someList.forEach((element) => print(element * element * element));
  var c = someList.map((e) => e * e * e);
  print(c.toList());

// 3) Создать массив. Заполнить его от 0 до 10. Сложить все элементы массива
  var d = someList.reduce((value, element) => value + element);
  print(d);

// 4) Создать массив из слов, Упорядочить все элементы по алфавиту в
// порядке возрастания.
  List<String> alphabeth = ['a', 'f', 'b', 'd', 'c', 'e'];

  alphabeth.sort();
  print(alphabeth);
// 5) Создать массив из слов, Упорядочить все элементы по алфавиту в
// порядке убывания.
  var e = alphabeth.reversed;
  print(e.toList());
// 6) Создать массив из слов, Упорядочить все элементы по длинне в порядке
// возрастания.

  List<String> words = [
    'apple',
    'fry',
    'burger',
    'daddy',
    'client',
    'elephant'
  ];

  words.sort((a, b) => a.length.compareTo(b.length));
  print(words);

// 7) Дан массив с числами. Оставьте в нем только четные числа
  var g = someList.where((element) => element % 2 == 0);
  print(g.toList());
// 8) Дан массив с числами. Найдите сумму первых N элементов до
// первого нуля. Пример: [1, 2, 3, 0, 4, 5, 6] - суммируем первые 3
// элемента, так как дальше стоит элемент с числом 0.

  List<int> nums = [1, 2, 3, 0, 4, 5, 6];
  var val = 0;
  nums.reduce((value, element) {
    if (element < 1) {
      val = value;
      return value;
    } else {
      return value + element;
    }
  });

  print(val);

  var res = 0;
  for (int i in nums) {
    if (i != 0) {
      res += i;
    } else {
      break;
    }
  }
  // print(res);

//   Через for
// 1) Необходимо вывести на экран числа от 1 до 5. На экране должно быть:
// 1 2 3 4 5

  for (var i = 1; i < 5; i++) {
    // print(i);
  }

// Через for
// 2)Необходимо вывести на экран числа от 5 до 1. На экране должно быть:
// 5 4 3 2 1

  for (var i = 5; i > 0; i--) {
    // print(i);
  }
// Через for
// 3) Необходимо вывести на экран таблицу умножения на 3:
// 3*1=3
// 3*2=6
// 3*3=9
// 3*4=12
// 3*5=15
// 3*6=18
// 3*7=21
// 3*8=24
// 3*9=27
// 3*10=30

  for (var i = 1; i <= 10; i++) {
    // print('3 * $i = ${i * 3}');
  }

// через for
// 4) Найти сумму чисел от 100 до 200 кратных 17.
// Через while
  var i = 100;
  var asd = 0;
  while (i < 200) {
    if (i % 17 == 0) {
      asd += i;
    }
    i++;
  }
  // print(asd);

// 5) Необходимо, чтоб программа выводила на экран вот такую
// последовательность:
// 7 14 21 28 35 42 49 56 63 70 77 84 91 98
// Через while

  var x = 1;
  while (x <= 98) {
    if (x % 7 == 0) {
      // print(x);
    }
    x++;
  }

// 6)Необходимо вывести на консоль такую последовательность чисел:
// 1 2 4 8 16 32 64 128 256 512
  var y = 1;
  for (var i = 1; y <= 512; i++) {
    // print(y);
    y = y * 2;
    i++;
    // print(i);
  }

  // val(1);
}

val(int num) {
  print(num);
  if (num <= 256) {
    num = num * 2;
    val(num);
  }
}
