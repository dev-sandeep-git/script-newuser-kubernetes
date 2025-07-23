You (admin) create and give Ajay a ready ajay-kubeconfig.yaml.

Ajay does:
mkdir -p ~/.kube
cp ajay-kubeconfig.yaml ~/.kube/config




If Ajay Needs Multiple Clusters?
Then it’s better to keep ajay-kubeconfig.yaml separate and set:

export KUBECONFIG=/path/to/ajay-kubeconfig.yaml
or:

kubectl --kubeconfig=/path/to/ajay-kubeconfig.yaml get pods
