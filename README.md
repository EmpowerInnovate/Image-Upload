# Image-Upload in "one click" with these 4 part

### 1) Local
### 2) Docker
### 3) Minikube
### 4) GKE 

You can run whatever part, just go to HowToRun folder.
Then go to folder in which you want to run.
You will get all the shell file to run that perticular part.
Like if you enter the GKE folder then you have to first run the file "createClusterIfNeeded.sh" with this command

```
sh createClusterIfNeeded.sh
```

It will create cluster in you gcloud console (Note : You have already created the project in Gcloud Console).

Now you want to run this app in gcloud kubernates engine then run this file "gCloudDeployment.sh" with this command

```
sh gCloudDeployment.sh
```

It will Run your whole app without doing anything and last you will get port and external IP which you can run in browser and you will get output.

After then you are done with then you can delete the cluster with this command which file also there

```
sh deleteClusterIfNeeded.sh
```

Now you are done with your app.


Thank you...  :)
