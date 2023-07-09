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
