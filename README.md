# Docker Drupal Example

### Running Locally

```
$ docker-compose up
```

### Staging Env Setup

```
# Start Services
$ docker-compose up -d

# Start Conduit
$ docker run \
     -d \
     --name conduit \
     -p 8080:8080 \
     -v /var/run/docker.sock:/var/run/docker.sock \
     ehazlett/conduit -r mattaitchison/drupal-test -t s3cr3+
```

#### Add webhook url to docker hub
`http://<your-conduit-host>:8080?token=s3cr3+`

#### Setup webhook to trigger conduit.


Automated build for `drupal-test` triggers `conduit` to pull new container, start it then kill old one.
github.com/MattAitchison/drupal-test
github.com/ehazlett/conduit
