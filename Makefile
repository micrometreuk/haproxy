.PHONY: run

containers:
	ansible-playbook -i inventory/hosts provision.yml
	bash -x scripts/dynamic-ip.sh
deploy:
	ansible-playbook -i inventory/site-hosts site.yml


