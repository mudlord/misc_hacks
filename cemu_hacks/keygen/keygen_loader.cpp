#include <windows.h>
#include <stdio.h>
#define MAX_SERIAL 1024
#include <time.h>  
#include <sys/types.h>  
#include <sys/stat.h>  
#include <stdio.h>  
#include <errno.h>  
#include <stdint.h>
extern "C"
{
	DWORD keygen_code_171();
	uint64_t cemu171customhash(DWORD HWID, DWORD timestamp, unsigned __int64* hash);
}

unsigned char cemu172dat[220] = {
	0x1A, 0x7B, 0xE2, 0x56, 0x86, 0x9B, 0xD5, 0x96, 0xE8, 0x02, 0x6C, 0x7A,
	0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x02, 0x6C, 0x7A, 0x2C,
	0x00, 0x00, 0x00, 0x12, 0x1E, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01,
	0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8,
	0x02, 0x6C, 0x7A, 0x81, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00
};

int file_exist(char* filename)
{
	struct stat   buffer;
	return (stat(filename, &buffer) == 0);
}

int process_serial()
{
	//get harddrive serial
	BYTE cemu171regqword[8] = { 0 };
	WORD regconst = 0x5943;
	uint64_t cemu171hash = 0;
	DWORD disk_serial = 0;
	DWORD HWID = 0;
	time_t timestamp = 0;
	DWORD code = keygen_code_171();
	time(&timestamp);
	GetVolumeInformationA("C:\\", NULL, NULL, &disk_serial, NULL, NULL, NULL, NULL);
	disk_serial = _rotl(disk_serial, 1);
	HWID = disk_serial ^ code;
	memcpy((BYTE*)&cemu171regqword[0], (DWORD*)&timestamp, sizeof(DWORD));
	memcpy((BYTE*)&cemu171regqword[4], (WORD*)&regconst, sizeof(WORD));
	cemu171hash = cemu171customhash(HWID, (DWORD)timestamp, (unsigned __int64*)&cemu171regqword[0]);
	BYTE* ptr = (BYTE*)cemu172dat;
	memcpy((BYTE*)ptr + 0x39, (uint64_t*)&cemu171hash, sizeof(uint64_t));
	memcpy((BYTE*)ptr + 0x41, (DWORD*)&cemu171regqword[0], 6);
	memcpy((BYTE*)ptr + 0x47, (DWORD*)&timestamp, sizeof(DWORD));
	memcpy((BYTE*)ptr + 0x4B, (DWORD*)&HWID, sizeof(DWORD));

	if (!file_exist("serial.bin"))
	{
		FILE* fp_serial = fopen("serial.bin", "wb");
		if (!fp_serial) return 0;
		for (int i = 0; i < 30; i++) {
			int num = rand() % 0xFF;
			fprintf(fp_serial, "%02x", num);
		}
		fclose(fp_serial);
	}

	int ret;
	FILE* fp_settings = NULL;
	BOOL fp_setexists = file_exist("settings.bin");
	if (!fp_setexists)
	{
		fp_settings = fopen("settings.bin", "wb");
		if (!fp_settings) return 0;
		int err = fwrite(cemu172dat, sizeof(cemu172dat), 1, fp_settings);
		if (!err) return 0;
		ret = 1;
	}
	else
	{
		fp_settings = fopen("settings.bin", "rb+");
		if (!fp_settings) return 0;
		fseek(fp_settings, 0x37, SEEK_SET);
		int err = fwrite(&cemu172dat[0x37], 0X18, 1, fp_settings);
		ret = 2;
	}
	fclose(fp_settings);
	fp_settings = NULL;
	return 1;
}

int APIENTRY WinMain(HINSTANCE hinst, HINSTANCE hinstPrev, LPSTR lpCmdLine, int nCmdShow)
{
	srand(GetTickCount());
	char serial[MAX_SERIAL];
	memset(serial,0,MAX_SERIAL);
	int done = process_serial();
	STARTUPINFO si;
	PROCESS_INFORMATION pi;
	//allocate memory
	ZeroMemory(&si, sizeof(si));
	si.cb = sizeof(si);
	ZeroMemory(&pi, sizeof(pi));
	//create child process
	if (!CreateProcess("Cemu.exe",lpCmdLine,NULL,NULL,FALSE,0,NULL,NULL,&si,&pi)){
		return -1;
	}
	WaitForSingleObject(pi.hProcess, INFINITE);
	CloseHandle(pi.hProcess);
	return 0;
}