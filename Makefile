TILT_PORT=23306
.PHONY: up down client

up:
	mkdir -p data
	echo "- op: replace\n  path: /spec/template/spec/volumes/0/hostPath/path\n  value: $(PWD)/data" > kubernetes/tilt/data.yaml
	kubectx docker-desktop
	tilt --port $(TILT_PORT) up

down:
	kubectx docker-desktop
	tilt down

client:
	kubectx docker-desktop
	kubectl --namespace mysql exec -it `kubectl --namespace mysql get pod | grep 'db-' | awk '{print $1}'` -- mysql -u root -p
