# Kubernetes

- Login to ubuntu
- cd to sidpalas kubernetes folder
- execute devbox shell
- devbox list to see all dependencies

## Kubectl command structure

```
kubectl <verb> <noun> -n <namespace> -o <format>
	kubectl get pods
	kubectl explain namespaces
```

## Kubectl Commands

- `kubectl cluster-info --context cluster name`
- `kubectl get nodes`
- `kubectl get pods -A` to get pods from all namespaces
- `kubectl explain namespace` instead of namespace you can give any resource name e.g `kubectl explain pod`
	- You can also nest elemnts lik `kubectl explain path.to.field`, e.g. `kubectl explain pod.spec`
- To describe the resource`kubectl describe namespace name`, `kubectl describe pod nginx-minimal` 
- `kubectl logs pod_name`
- `kubectl exec -it pod_name`
- `kubectl debug -it pod_name`

kubens xxx ( to switch namespace)

## Kubens Commands

- To list namespaces `kubens`
- To switch to namespace `kubens test`

## Kubectx commands

- To list all clusters `kubectx`
- To switch `kubectx clusername`

## Built in Kubernetes Resources

### Namespace

- Used for grouping of resources.
- By default you will be under a default namespace. Any pods you create will be under the default namespace
- You can create a namespace using `kubectl create namespace test`
- To delete `kubectl delete namespace test`
- This is not the correct way to create resources in Kubernetes
- It recommonded to use the yaml file
- Create xx.yaml file with below content

```
apiVersion: v1
kind: Namespace
metadata:
  name: 04--namespace-file
```

- `kubectl apply -f xx.yaml` this will create the resource specified in the yaml file
- `kubectl delete -f xx.yaml` to delete the resource inside the yaml file


### Pods

