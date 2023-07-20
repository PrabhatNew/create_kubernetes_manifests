# Kubernetes Manifests

This directory contains the Kubernetes manifests for deploying our application in a Kubernetes cluster. The manifests are generated using Bash scripts that are located in this directory.

## Manifest Files

The following manifest files are generated by the scripts:

- `deployment.yaml`: This file contains the deployment configuration for the application.
- `service.yaml`: This file contains the service configuration for the application.
- `ingress.yaml`: This file contains the ingress configuration for the application.

## Bash Scripts

The following Bash scripts are used to generate the manifests:

- `create_deployment.sh`: This script generates the `deployment.yaml` file.
- `create_service.sh`: This script generates the `service.yaml` file.
- `create_ingress.sh`: This script generates the `ingress.yaml` file.

## Usage

1. Clone the repository in the cluster using the following command:
   `````sh
   sudo git clone https://github.com/PrabhatNew/create_kubernetes_manifests.git
   

2. Make the Bash scripts executable using the following command:
   ````sh
   sudo chmod +x -R create_kubernetes_manifests
   ````
   ````sh
   cd create_kubernetes_manifests
   ````

3. To generate the manifests, simply run the Bash scripts in the following order:

```
./create_deployment.sh
./create_service.sh
./create_ingress.sh
```

This will generate the `deployment.yaml`, `service.yaml`, and `ingress.yaml` files in the current directory.

## Contributing

If you want to contribute to this project, please follow the standard GitHub workflow:

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes and commit them
4. Push your changes to your fork
5. Open a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.