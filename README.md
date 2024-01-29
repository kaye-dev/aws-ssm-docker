# SSM-Docker

## How to use:

### Build Docker Image

First, build the Docker image with the following command:

```bash
docker build -t aws-cli-with-session-manager-plugin .
```

### Run the Script

Before running the script, ensure it is executable:

```bash
chmod +x ssm.sh
```

Then, use the script to start an AWS SSM session. Replace [your-instance-id] with your actual instance ID, and [your-profile] with your AWS profile name. If you don't want to specify a profile, just press enter when prompted.

```zsh
./ssm.sh
```

Alternatively, you can directly run the Docker command:

```bash
docker run --rm -it -v "$HOME/.aws:/root/.aws" aws-cli-with-session-manager-plugin \
  ssm start-session --target [your-instance-id] --profile [your-profile]
```
