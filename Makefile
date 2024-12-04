build:
	kubectl create namespace distribution
	kubectl create namespace inventory
	kubectl create namespace logistics
	kubectl create namespace procurement

	kubectl apply -f deployments/distribution/deployment.yaml
	kubectl apply -f deployments/inventory/deployment.yaml
	kubectl apply -f deployments/logistics/deployment.yaml
	kubectl apply -f deployments/procurement/deployment.yaml

	kubectl apply -f deployments/distribution/service.yaml
	kubectl apply -f deployments/inventory/service.yaml
	kubectl apply -f deployments/logistics/service.yaml
	kubectl apply -f deployments/procurement/service.yaml

clean:
	kubectl delete all --all -n distribution
	kubectl delete all --all -n inventory
	kubectl delete all --all -n logistics
	kubectl delete all --all -n procurement

	kubectl delete namespace distribution
	kubectl delete namespace inventory
	kubectl delete namespace logistics
	kubectl delete namespace procurement