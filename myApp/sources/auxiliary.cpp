#include<windows.h>
#include <direct.h>
#include"auxiliary.h"

int  auxiliary::getAllFiles(string subDir, vector<string> files)
{
    files.clear();

   //get application dir
    char current_work_dir[_MAX_FNAME] ;
    _getcwd(current_work_dir, sizeof(current_work_dir));
    string path = current_work_dir;
    //dir of interest
    path += "\\" + subDir;

    WIN32_FIND_DATA FindFileData;
    HANDLE hf;

    hf = FindFirstFile(path.c_str(), &FindFileData);
    if (hf != INVALID_HANDLE_VALUE)
    {
        do
        {
            files.push_back( FindFileData.cFileName);
        } while (FindNextFile(hf, &FindFileData) != 0);
        FindClose(hf);
    }
    return (files.size() > 0) ? 1 : 0;
}
