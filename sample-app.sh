# /bin/zsh
# THIS OPENS PORT 8080 on YOUR MACHINE, use caution
mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static
# make the dirs
cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.
#copy the files over
echo "FROM python" > tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  sample_app.py /home/myapp/" >> tempdir/Dockerfile
# write the text for the dockerfile
echo "EXPOSE 8080" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/sample_app.py" >> tempdir/Dockerfile
# write text to open port 8080 and run the python script with flask stuff
cd tempdir
docker build -t sampleapp .
docker ps -a
# change to the dir, build the container, list the containers
