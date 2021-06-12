.586
.model flat, stdcall
option casemap: none

include keygen.inc


.data?
buffer BYTE 40 DUP(?)
.code

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

; Attributes: library function bp-based frame

longtion_md5 proc 

var_30 	= dword ptr -30h
var_2C 	= dword ptr -2Ch
var_28 	= byte ptr -28h
var_24 	= byte ptr -24h
var_20 	= byte ptr -20h
var_1C 	= dword ptr -1Ch
var_18 	= dword ptr -18h
var_14 	= dword ptr -14h
var_10 	= dword ptr -10h
var_C 	= dword ptr -0Ch
var_8 	= dword ptr -8
var_4 	= dword ptr -4
arg_0 	= dword ptr  8

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFD0h
		push ebx
		push esi
		push edi
		xor ebx, ebx
		mov [ebp+var_30], ebx
		mov [ebp+var_C], ecx
		mov [ebp+var_8], edx
		mov [ebp+var_4], eax
		lea ebx, [ebp+var_20]
		lea esi, [ebp+var_24]
		lea edi, [ebp+var_28]
		xor eax, eax
		push ebp
		
		mov [ebp+var_1C], 1234567h
		mov [ebp+var_18], 89ABCDEFh
		mov [ebp+var_14], 0BA98FEDCh
		mov [ebp+var_10], 76504321h
		mov eax, [ebp+var_10]
		mov [ebx], eax
		mov eax, [ebp+var_14]
		mov [esi], eax
		mov eax, [ebp+var_18]
		mov [edi], eax
		mov eax, [ebp+var_1C]
		mov [ebp+var_2C], eax
		
		invoke RtlZeroMemory,ADDR buffer,SIZEOF buffer
		add esp, 8
		
		
		mov eax,[ebp+var_4]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx], eax
		mov eax, [ebp+var_8]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+4], eax
		mov eax, [ebp+var_C]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+8], eax
		mov eax, [ebp+arg_0]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+0Ch], eax
		mov eax, [ebp+arg_0]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+10h], eax
		mov eax, [ebp+var_C]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+14h], eax
		mov eax, [ebp+var_8]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+18h], eax
		mov eax, [ebp+var_4]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+1Ch], eax
		mov eax, [ebp+var_4]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+20h], eax
		mov eax, [ebp+var_8]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+24h], eax
		mov eax, [ebp+var_C]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+28h], eax
		mov eax, [ebp+arg_0]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+2Ch], eax
		mov eax, [ebp+arg_0]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+30h], eax
		mov eax, [ebp+var_C]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+34h], eax
		mov eax, [ebp+var_8]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+38h], eax
		mov eax, [ebp+var_4]
		mov eax, [eax]
		mov edx, offset buffer
		mov [edx+3Ch], eax
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax]
		push eax
		push 7
		push 0D76AA478h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round1
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+4]
		push eax
		push 0Ch
		push 0E8C7B756h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round1
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+8]
		push eax
		push 11h
		push 242070DBh
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round1
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+0Ch]
		push eax
		push 16h
		push 0C1BDCEEEh
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round1
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+10h]
		push eax
		push 7
		push 0F57C0FAFh
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round1
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+14h]
		push eax
		push 0Ch
		push 4787C62Ah
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round1
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+18h]
		push eax
		push 11h
		push 0A8304613h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round1
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+1Ch]
		push eax
		push 16h
		push 0FD469501h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round1
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+20h]
		push eax
		push 7
		push 698098D8h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round1
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+24h]
		push eax
		push 0Ch
		push 8B44F7AFh
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round1
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+28h]
		push eax
		push 11h
		push 0FFFF5BB1h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round1
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+2Ch]
		push eax
		push 16h
		push 895CD7BEh
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round1
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+30h]
		push eax
		push 7
		push 6B901122h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round1
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+34h]
		push eax
		push 0Ch
		push 0FD987193h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round1
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+38h]
		push eax
		push 11h
		push 0A679438Eh
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round1
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+3Ch]
		push eax
		push 16h
		push 49B40821h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round1
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+4]
		push eax
		push 5
		push 0F61E2562h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round2
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+18h]
		push eax
		push 9
		push 0C040B340h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round2
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+2Ch]
		push eax
		push 0Eh
		push 265E5A51h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round2
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax]
		push eax
		push 14h
		push 0E9B6C7AAh
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round2
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+14h]
		push eax
		push 5
		push 0D62F105Dh
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round2
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+28h]
		push eax
		push 9
		push 2441453h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round2
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+3Ch]
		push eax
		push 0Eh
		push 0D8A1E681h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round2
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+10h]
		push eax
		push 14h
		push 0E7D3FBC8h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round2
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+24h]
		push eax
		push 5
		push 21E1CDE6h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round2
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+38h]
		push eax
		push 9
		push 0C33707D6h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round2
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+0Ch]
		push eax
		push 0Eh
		push 0F4D50D87h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round2
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+20h]
		push eax
		push 14h
		push 455A14EDh
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round2
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+34h]
		push eax
		push 5
		push 0A9E3E905h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round2
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+8]
		push eax
		push 9
		push 0FCEFA3F8h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round2
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+1Ch]
		push eax
		push 0Eh
		push 676F02D9h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round2
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+30h]
		push eax
		push 14h
		push 8D2A4C8Ah
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round2
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+14h]
		push eax
		push 4
		push 0FFFA3942h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round3
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+20h]
		push eax
		push 0Bh
		push 8771F681h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round3
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+2Ch]
		push eax
		push 10h
		push 6D9D6122h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round3
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+38h]
		push eax
		push 17h
		push 0FDE5380Ch
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round3
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+4]
		push eax
		push 4
		push 0A4BEEA44h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round3
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+10h]
		push eax
		push 0Bh
		push 4BDECFA9h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round3
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+1Ch]
		push eax
		push 10h
		push 0F6BB4B60h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round3
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+28h]
		push eax
		push 17h
		push 0BEBFBC70h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round3
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+34h]
		push eax
		push 4
		push 289B7EC6h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round3
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax]
		push eax
		push 0Bh
		push 0EAA127FAh
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round3
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+0Ch]
		push eax
		push 10h
		push 0D4EF3085h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round3
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+18h]
		push eax
		push 17h
		push 4881D05h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round3
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+24h]
		push eax
		push 4
		push 0D9D4D039h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round3
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+30h]
		push eax
		push 0Bh
		push 0E6DB99E5h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round3
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+3Ch]
		push eax
		push 10h
		push 1FA27CF8h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round3
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+8]
		push eax
		push 17h
		push 0C4AC5665h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round3
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax]
		push eax
		push 6
		push 0F4292244h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round4
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+1Ch]
		push eax
		push 0Ah
		push 432AFF97h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round4
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+38h]
		push eax
		push 0Fh
		push 0AB9423A7h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round4
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+14h]
		push eax
		push 15h
		push 0FC93A039h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round4
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+30h]
		push eax
		push 6
		push 655B59C3h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round4
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+0Ch]
		push eax
		push 0Ah
		push 8F0CCC92h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round4
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+28h]
		push eax
		push 0Fh
		push 0FFEFF47Dh
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round4
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+4]
		push eax
		push 15h
		push 85845DD1h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round4
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+20h]
		push eax
		push 6
		push 6FA87E4Fh
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round4
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+3Ch]
		push eax
		push 0Ah
		push 0FE2CE6E0h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round4
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+18h]
		push eax
		push 0Fh
		push 0A3014314h
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round4
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+34h]
		push eax
		push 15h
		push 4E0811A1h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round4
		mov eax, [ebp+var_2C]
		push eax
		mov eax, offset buffer
		mov eax, [eax+10h]
		push eax
		push 6
		push 0F7537E82h
		mov eax, ebx
		mov ecx, [edi]
		mov edx, [esi]
		call md5_round4
		mov eax, [edi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+2Ch]
		push eax
		push 0Ah
		push 0BD3AF235h
		lea eax, [ebp+var_2C]
		mov ecx, [esi]
		mov edx, [ebx]
		call md5_round4
		mov eax, [esi]
		push eax
		mov eax, offset buffer
		mov eax, [eax+8]
		push eax
		push 0Fh
		push 2AD7D2BBh
		mov eax, edi
		mov ecx, [ebx]
		mov edx, [ebp+var_2C]
		call md5_round4
		mov eax, [ebx]
		push eax
		mov eax, offset buffer
		mov eax, [eax+24h]
		push eax
		push 15h
		push 0EB86D391h
		mov eax, esi
		mov ecx, [ebp+var_2C]
		mov edx, [edi]
		call md5_round4
		mov eax, [ebp+var_10]
		add eax, [ebx]
		mov edx, [ebp+var_4]
		mov [edx], eax
		mov eax, [ebp+var_14]
		add eax, [esi]
		mov edx, [ebp+var_8]
		mov [edx], eax
		mov eax, [ebp+var_18]
		add eax, [edi]
		mov edx, [ebp+var_C]
		mov [edx], eax
		mov eax, [ebp+var_1C]
		add eax, [ebp+var_2C]
		mov edx, [ebp+arg_0]
		mov [edx], eax
		xor eax, eax
		pop edx
		pop ecx
		pop ecx

		pop edi
		pop esi
		pop ebx
		mov esp, ebp
		pop ebp
		retn 4
longtion_md5 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

md5_round1 proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h

		push ebp
		mov ebp, esp
		push ecx
		push ebx
		push esi
		push edi
		mov edi, ecx
		mov esi, edx
		mov ebx, eax
		mov ecx, [ebp+arg_C]
		mov edx, edi
		mov eax, esi
		call md5_round1sub1
		add eax, [ebx]
		add eax, [ebp+arg_8]
		add eax, [ebp+arg_0]
		mov [ebp+var_4], eax
		lea eax, [ebp+var_4]
		mov edx, [ebp+arg_4]
		call md5_round1sub2
		add esi, [ebp+var_4]
		mov [ebx], esi
		pop edi
		pop esi
		pop ebx
		pop ecx
		pop ebp
		retn 10h
md5_round1 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

md5_round1sub1 proc near
		and edx, eax
		not eax
		and ecx, eax
		or edx, ecx
		mov eax, edx
		retn
md5_round1sub1 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

md5_round1sub2 proc near
		push ebx
		push esi
		mov esi, eax
		mov ebx, edx
		dec ebx
		test ebx, ebx
		jl loc_4D5052
		inc ebx

loc_4D5048:
		mov eax, esi
		call sub_4D502C
		dec ebx
		jnz loc_4D5048

loc_4D5052:
		pop esi
		pop ebx
		retn
md5_round1sub2 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

sub_4D502C proc near
		test byte ptr [eax+3], 80h
		setz dl
		shl dword ptr [eax], 1
		test dl, dl
		jnz locret_4D503B
		inc dword ptr [eax]

locret_4D503B:
		retn
sub_4D502C endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

md5_round2 proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h

		push ebp
		mov ebp, esp
		push ecx
		push ebx
		push esi
		push edi
		mov edi, ecx
		mov esi, edx
		mov ebx, eax
		mov ecx, [ebp+arg_C]
		mov edx, edi
		mov eax, esi
		call md5_round1sub3
		add eax, [ebx]
		add eax, [ebp+arg_8]
		add eax, [ebp+arg_0]
		mov [ebp+var_4], eax
		lea eax, [ebp+var_4]
		mov edx, [ebp+arg_4]
		call md5_round1sub2
		add esi, [ebp+var_4]
		mov [ebx], esi
		pop edi
		pop esi
		pop ebx
		pop ecx
		pop ebp
		retn 10h
md5_round2 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

md5_round1sub3 proc near
		and eax, ecx
		not ecx
		and edx, ecx
		or eax, edx
		retn
md5_round1sub3 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

md5_round3 proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h

		push ebp
		mov ebp, esp
		push ecx
		push ebx
		push esi
		push edi
		mov edi, ecx
		mov esi, edx
		mov ebx, eax
		mov ecx, [ebp+arg_C]
		mov edx, edi
		mov eax, esi
		call md5_round1sub4
		add eax, [ebx]
		add eax, [ebp+arg_8]
		add eax, [ebp+arg_0]
		mov [ebp+var_4], eax
		lea eax, [ebp+var_4]
		mov edx, [ebp+arg_4]
		call md5_round1sub2
		add esi, [ebp+var_4]
		mov [ebx], esi
		pop edi
		pop esi
		pop ebx
		pop ecx
		pop ebp
		retn 10h
md5_round3 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

md5_round1sub4 proc near
		xor eax, edx
		xor ecx, eax
		mov eax, ecx
		retn
md5_round1sub4 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

md5_round4 proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h

		push ebp
		mov ebp, esp
		push ecx
		push ebx
		push esi
		push edi
		mov edi, ecx
		mov esi, edx
		mov ebx, eax
		mov ecx, [ebp+arg_C]
		mov edx, edi
		mov eax, esi
		call md5_round1sub5
		add eax, [ebx]
		add eax, [ebp+arg_8]
		add eax, [ebp+arg_0]
		mov [ebp+var_4], eax
		lea eax, [ebp+var_4]
		mov edx, [ebp+arg_4]
		call md5_round1sub2
		add esi, [ebp+var_4]
		mov [ebx], esi
		pop edi
		pop esi
		pop ebx
		pop ecx
		pop ebp
		retn 10h
md5_round4 endp

; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |       Copyright (c) 2011 Hex-Rays, <support@hex-rays.com>     |
; | 		 License info: 48-327F-7274-B7 		    |
; | 		       ESET spol. s r.o. 		    |

; =============== S U B R O U T I N E =======================================

md5_round1sub5 proc near
		not ecx
		or eax, ecx
		xor edx, eax
		mov eax, edx
		retn
md5_round1sub5 endp

END