#include <iostream>
using namespace std;

void main()
{    
		const int size_array = 5;    
		cout << "This program finds sum of the positiove array elements" << endl; // ����� ��������� � �������
		
		int arr[size_array] = {0,0,0,0,0}; // �������������� ����������� ������
		int res_c = 0;  // ���������� ��� �������� �����������
		int res_asm = 0; // ���������� ��� �������� �����������
        // ��������� ������ � ����������
        for (int i = 0; i < size_array; i++) {
            cout << "Enter [" << i + 1 << "] array element " << ": "; // ����� ��������� � �������
            cin >> arr[i]; // ���� �������� i-�� �������� �������
        }

        cout << "Array is: "; // ����� ��������� � �������

        for (int i = 0; i < size_array; ++i) cout << arr[i] << " "; // ����� ������������ ������� � �������

		for (int i=0; i<size_array; i++) {
			if (arr[i] > 0) {
				res_c =  res_c + arr[i]; // ������� ����� ��������� �������
			}
		}
        cout << endl; // ������� �� ����� ������

		cout <<"Summa on C++ is " << res_c << endl; // ����� ���������� � �������

		__asm { // ������������ �������
				lea esi,arr // ������� ����������� ����� ������� arr � ���������� ��� � ������� ESI
				mov ecx, size_array // ��������� � ������� ECX ���������� ��������� � ������� (������� ECX ������������ 
				// � �������� �������� ��� ������� loop)
				xor eax, eax // �������� ������� EAX
				
start:			mov ebx, [esi] // ��������� � ������� EBX ������� ������� �������
				cmp ebx, 0
				jle next_element
				add eax, ebx // ������� ����� ������������� ��������� �������
next_element:
				add esi, 4 // ������� � ������ ���������� �������� ������� ( + 4 �.�. int �������� � ������ 4 �����)
				loop start // ���� (� �������� �������� ������������ ������� ECX)
				mov res_asm, eax // ���������� ���������� � ���������� res_asm
		}

				cout <<"Summa on ASM is " << res_asm << endl; // ����� ����������� � �������
				system ("pause"); // �������� ������� ����� ������� �������������
}