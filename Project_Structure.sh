echo "Welcome Enter the project name"
read Projectname
mkdir "$Projectname"
echo "Folder created with name $Projectname"
cd "$Projectname"
mkdir build dist docs lib setup src test web
echo "Folders created:- 'build' 'dist' 'docs' 'lib' 'setup' 'src' 'test' 'web'"
cd src
mkdir conf java
echo "Folders created inside src folder:- 'conf' 'java'"
cd ..
cd web
cp /home/ec2-user/files/test.html /home/ec2-user/"$Projectname"/web
cp /home/ec2-user/files/test.jsp /home/ec2-user/"$Projectname"/web
echo "files copied are test.html and test.jsp"
mkdir WEB-INF
cd WEB-INF
mkdir jspf lib tlds tags
echo "folders created are 'jspf' 'lib' 'tlds' 'tags'"
cp /home/ec2-user/files/web.xml /home/ec2-user/"$Projectname"/WEB-INF
cd ..
cd ..
cp /home/ec2-user/files/prop.properties /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/build.xml /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/README.txt /home/ec2-user/"$Projectname"
cp /home/ec2-user/files/LICENSE.txt /home/ec2-user/"$Projectname"
echo "Files are copied in the folder"
echo "Project Structure is created with all  the needed files"
echo "############################Thank you##########################"
