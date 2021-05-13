# nodeJS-image-upload

## 1) This is for local now you can understand the logic of node app  

Simple NodeJS Express Program get files as input from user and upload it to the server. 

To install necessary packages and start the server: 
    
    npm install && npm start

Then go to [http://localhost:3000](http://localhost:3000). 

Explanation - https://medium.com/@nitinpatel_20236/image-upload-via-nodejs-server-3fe7d3faa642

## 2) Docker 

My video explanation - https://drive.google.com/file/d/16DpI9xTQUt-oYqzje1kFrdQoD5lp8iN4/view?usp=sharing

Here first you have to clone my github repo.
Now all the files you have so you have simply build the image with this command




#### Note : If you want to add node_modules in .dockerignore then you have install npm in docker container and for that you have to do first create the container and then inside the container you have to give the command

```
npm install && npm start
```

Now you can run the node app in the container port.




```
docker build -t nodeapp .
```

nodeapp is docker image name.

After then you have to give the port of the image and make it container which will run on that port

```
docker run -p 8081:3000 nodeapp
```

8081(Your choice for port) is port of container. 
Now you have to go in browser and type this => http://localhost:8081/

And upload the image of your computer storage.

If you want to go inside the container and see all the things then you can use this command 
docker exec -it <container id> /bin/bash

```
docker exec -it 0caf722b378b /bin/bash
```

Now you are inside the container you can see whatever you want.

That's it...



Thankyou... :)