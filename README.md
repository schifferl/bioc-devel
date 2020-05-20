# bioc-devel
A More Complete Bioconductor Devel Container

How I build the container:

```
docker build -t schifferl/bioc-devel:latest - < Dockerfile
```

How I start the container:

```
read -s 'REPLY?bioc-passwd:'; echo; docker run -d --name bioc-devel --restart unless-stopped -p 8000:8787 -e PASSWORD=$REPLY -e USER=bioc -v /Users/$USER/.ssh:/home/bioc/.ssh schifferl/bioc-devel:latest; unset REPLY
```
