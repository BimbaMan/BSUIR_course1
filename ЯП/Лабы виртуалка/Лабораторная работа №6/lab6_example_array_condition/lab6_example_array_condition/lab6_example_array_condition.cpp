#include <iostream>
using namespace std;

void main()
{    
		const int size_array = 5;    
		cout << "This program finds sum of the positiove array elements" << endl; // вывод сообщения в консоль
		
		int arr[size_array] = {0,0,0,0,0}; // инициализируем статический массив
		int res_c = 0;  // переменные для хранения результатов
		int res_asm = 0; // переменные для хранения результатов
        // Заполняем массив с клавиатуры
        for (int i = 0; i < size_array; i++) {
            cout << "Enter [" << i + 1 << "] array element " << ": "; // вывод сообщения в консоль
            cin >> arr[i]; // ввод значения i-го элемента массива
        }

        cout << "Array is: "; // вывод сообщения в консоль

        for (int i = 0; i < size_array; ++i) cout << arr[i] << " "; // вывод заполненного массива в консоль

		for (int i=0; i<size_array; i++) {
			if (arr[i] > 0) {
				res_c =  res_c + arr[i]; // находим сумму элементов массива
			}
		}
        cout << endl; // переход на новую строку

		cout <<"Summa on C++ is " << res_c << endl; // вывод результата в консоль

		__asm { // ассемблерная вставка
				lea esi,arr // находим эффективный адрес массива arr и записываем его в решистр ESI
				mov ecx, size_array // загружаем в регистр ECX количество элементов в массиве (регистр ECX используется 
				// в качестве счётчика для команды loop)
				xor eax, eax // обнуляем регистр EAX
				
start:			mov ebx, [esi] // загружаем в регистр EBX текущий элемент массива
				cmp ebx, 0
				jle next_element
				add eax, ebx // находим сумму положительных элементов массива
next_element:
				add esi, 4 // переход к адресу следующего элемента массива ( + 4 т.к. int занимает в памяти 4 байта)
				loop start // цикл (в качестве счётчика используется регистр ECX)
				mov res_asm, eax // сохранение результата в переменную res_asm
		}

				cout <<"Summa on ASM is " << res_asm << endl; // вывод результатов в консоль
				system ("pause"); // ожидание нажатия люьой клавиши пользователем
}