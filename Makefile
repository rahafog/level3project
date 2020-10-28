install-tekton:
	kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

front-end-service:
	kubectl create -f ./front-end/resource.yaml -n test
	kubectl create -f ./front-end/task.yaml -n test
	kubectl create -f ./front-end/task-deployment.yaml -n test
	kubectl create -f ./front-end/pipeline.yaml -n test
	kubectl create -f ./front-end/pipelinerun.yaml -n test

orders-service:
	kubectl create -f ./orders/resource.yaml -n test
	kubectl create -f ./orders/task-db.yaml -n test
	kubectl create -f ./orders/task-db-deployment.yaml -n test
	kubectl create -f ./orders/task.yaml -n test
	kubectl create -f ./orders/task-deployment.yaml -n test
	kubectl create -f ./orders/pipeline.yaml -n test
	kubectl create -f ./orders/pipelinerun.yaml -n test

carts-service:
	kubectl create -f ./carts/resource.yaml -n test
	kubectl create -f ./carts/task-db.yaml -n test
	kubectl create -f ./carts/task-db-deployment -n test
	kubectl create -f ./carts/task.yaml -n test
	kubectl create -f ./carts/task-deployment.yaml -n test
	kubectl create -f ./carts/pipeline.yaml -n test
	kubectl create -f ./carts/pipelinerun.yaml -n test

catalogue-servive:
	kubectl create -f ./catalogue/resource.yaml -n test
	kubectl create -f ./catalogue/task-db.yaml -n test
	kubectl create -f ./catalogue/task-db-deployment.yaml -n test
	kubectl create -f ./catalogue/task.yaml -n test
	kubectl create -f ./catalogue/task-deployment.yaml -n test
	kubectl create -f ./catalogue/pipeline.yaml -n test
	kubectl create -f ./catalogue/pipelinerun.yaml -n test
