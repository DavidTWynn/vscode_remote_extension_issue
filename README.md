Testing an issue with VSCode extension auto downloading in containers.

# Requirements

Docker installed with the compose plugin

# Setup

```
git clone https://github.com/DavidTWynn/vscode_remote_extension_issue
cd vscode_remote_extension_issue
```

Edit the .env file to set the password for the root account in the Docker image

Open project in VSCode and install recommended extensions

# Run

```
docker compose up -d
```

Connect VSCode Remote SSH to 'root@127.0.0.1:2022' and use the password from the .env file in the project.

# Check proxy logs

Verify the proxy container is running

```
docker container ls
```

Enter a shell of the proxy container

```
docker exec -it vscode_remote_extension_issue-proxy-1 /bin/bash
```

View logs

```
tail -f /var/log/mitmdump.log
```

# Clean up

Shutdown the containers from the docker-compose.yml file and remove them

```
docker compose down
```

Delete all unused images

```
docker image prune -af
```
