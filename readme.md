# You (admin) create and give Sandeep a ready sandeep-kubeconfig.yaml file.

# Sandeep runs the following commands:

mkdir -p ~/.kube
cp sandeep-kubeconfig.yaml ~/.kube/config

# If Sandeep needs to work with multiple kubeconfig files for multiple clusters,
# it’s better to keep sandeep-kubeconfig.yaml separate and set:

export KUBECONFIG=/path/to/sandeep-kubeconfig.yaml

# Or use kubectl commands with the kubeconfig file explicitly:

kubectl --kubeconfig=/path/to/sandeep-kubeconfig.yaml get pods
