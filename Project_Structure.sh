#Greetings to the USER
GREETING="Welcome to Project_Structure generator"
h=`date +%H`

if [ $h -lt 12 ]; then
  echo Good morning $GREETING 
elif [ $h -lt 18 ]; then
  echo Good afternoon $GREETING
else
  echo Good evening $GREETING
fi
#The code Begins Here
echo "Welcome Enter the project name"
read Projectname
#Creating the Rootfolder with the given name
mkdir "$Projectname"
read OLD_PATH
NEW_PATH=$PWD
echo $NEW_PATH
echo "Folder created with name $Projectname"



cd "$Projectname"
#Creating the folders based on the web application
mkdir build dist docs lib setup src test web
echo "Folders created:- 'build' 'dist' 'docs' 'lib' 'setup' 'src' 'test' 'web'"
cd src
TEMP_PATH=src;
#Folders based on web application
mkdir conf java
echo "Folders created inside src folder:- 'conf' 'java'"
cd ..
cd web
#Copying the files from Main code the created directory
cp $OLD_PATH/files/test.html $NEW_PATH/"$Projectname"/web
cp $OLD_PATH/files/test.jsp $NEW_PATH/"$Projectname"/web
echo "files copied are test.html and test.jsp"
#Folders based on web application
mkdir WEB-INF
cd WEB-INF
#Folders based on web application
mkdir jspf lib tlds tags
echo "folders created are 'jspf' 'lib' 'tlds' 'tags'"
cp /home/ec2-user/files/web.xml /home/ec2-user/"$Projectname"/WEB-INF
cd ..
cd ..
#Copying the files from Main code the created directory
cp $OLD_PATH/files/prop.properties $NEW_PATH/"$Projectname"
cp $OLD_PATH/files/build.xml $NEW_PATH/"$Projectname"
cp $OLD_PATH/files/README.txt $NEW_PATH/"$Projectname"
cp $OLD_PATH/files/LICENSE.txt $NEW_PATH/"$Projectname"
echo "Files are copied in the folder"
echo "Project Structure is created with all  the needed files"

echo "############################Thank you##########################"
