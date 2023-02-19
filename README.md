# Common Docker Images  

Docker base images for personal projects

## Background  

Long story short, I grew tired of hunting down version numbers, remediating CVEs over and over, and recreating image layers.  Figured I'd create a repo to grow a collection of Dockerfiles as I use them.  No idea what will ever happen to this repo.

## Ironbank

### About Platform One : [https://software.af.mil/dsop/services/](https://software.af.mil/dsop/services/)

### Info at Platform One : [https://p1.dso.mil/products/iron-bank](https://p1.dso.mil/products/iron-bank)

### Hardened Image Catalog : [https://ironbank.dso.mil/repomap](https://ironbank.dso.mil/repomap)

### Harbor : [https://registry1.dso.mil](https://registry1.dso.mil)

### Loging In

```
docker login registry1.dso.mil
```

## FAQ

### Why not just push to Docker Hub?  

If I end up using these often enough then I probably will push them to Docker Hub.  Today this is simply an experiment.

### Why create an image if you're not customizing it?  

IMHO you should always create your own custom Dockerfile even for products or apps you have no plan to customize or modify.  Not every packge out there is updated in a timely manner.  And, almost none of them are hardened.  By always having your own Dockerfile you gaurantee yourself a place to apply fixes or patches, or remediate vulnerabilities.  If you did not have this then, WHEN the time comes for you to apply such patches or fixes, then you will need to add the file and probably change your build process.  You might as well start off right.

## Contact Info  

Should you need a hand with any of the items in this repo, feel free to reach out:

Fred Lackey  
[http://fredlackey.com](http://fredlackey.com)  
[fred.lackey@gmail.com](mailto://fred.lackey@gmail.com)