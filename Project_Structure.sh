#The code Begins Here
echo "Welcome Enter the project name"
read Projectname
#Creating the Rootfolder with the given name
mkdir "$Projectname"
echo "Folder created with name $Projectname"
cd "$Projectname"
#Creating the folders based on the web application
mkdir build dist docs lib setup src test web
echo "Folders created:- 'build' 'dist' 'docs' 'lib' 'setup' 'src' 'test' 'web'"
cd src
#Folders based on web application
mkdir conf java
echo "Folders created inside src folder:- 'conf' 'java'"
cd ..
cd web
#Copying the files from Main code the created directory
cp /home/ec2-user/files/test.html /home/ec2-user/"$Projectname"/web
cp /home/ec2-user/files/test.jsp /home/ec2-user/"$Projectname"/web
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
cp /home/ec2-user/files/prop.properties /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/build.xml /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/README.txt /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/LICENSE.txt /home/ec2-user/"$Projectname"
echo "Files are copied in the folder"
echo "Project Structure is created with all  the needed files"
echo "############################Thank you##########################"
