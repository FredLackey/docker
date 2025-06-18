# Common Docker Images  

Docker base images for personal projects

## Background  

Long story short, I grew tired of hunting down version numbers, remediating CVEs over and over, and recreating image layers.  Figured I'd create a repo to grow a collection of Dockerfiles as I use them.  No idea what will ever happen to this repo.

## Important Note

Please be aware that the Docker images and configurations in this repository are intended for local development and educational purposes only. They are provided as a starting point to help you learn and experiment with these technologies. These examples are not hardened for production use and should not be deployed in a live environment without a thorough security review and appropriate modifications.

## Available Images

Here is a list of the images available in this repository:

*   **apache**: A classic HTTP server.
*   **cassandra-db**: A high-performance, distributed NoSQL database.
*   **keycloak**: An open-source identity and access management solution.
*   **mailslurper**: A handy SMTP mail server for development that captures all outgoing email.
*   **mariadb**: A popular open-source relational database, forked from MySQL.
*   **mongo**: A leading NoSQL, document-oriented database.
*   **mongo-express**: A web-based admin interface for MongoDB.
*   **moodle**: A widely-used open-source learning platform.
*   **mysql**: The world's most popular open-source relational database.
*   **n8n**: A free and open-source workflow automation tool.
*   **nginx**: A high-performance web server, reverse proxy, and load balancer.
*   **node**: A JavaScript runtime built on Chrome's V8 JavaScript engine.
*   **node-red**: A flow-based development tool for visual programming.
*   **pgadmin**: A feature-rich administration and development platform for PostgreSQL.
*   **phpmyadmin**: A web-based administration tool for MySQL and MariaDB.
*   **portainer**: A lightweight management UI for Docker environments.
*   **postgres**: A powerful, open-source object-relational database system.
*   **redis**: An in-memory data structure store, used as a database, cache, and message broker.
*   **redis-commander**: A web-based user interface to manage Redis databases.
*   **restutils**: A simple, useful utility for testing REST APIs.
*   **ubuntu**: A popular Linux distribution, providing base images for various versions.
*   **ubuntu-dev**: A customized Ubuntu image with common development tools pre-installed.
*   **wordpress**: A free and open-source content management system.

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