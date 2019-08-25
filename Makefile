.PHONY: run

containers:
	ansible-playbook -i inventory/hosts provision.yml
	bash  scripts/dynamic-ip.sh
	ansible-playbook -i inventory/site-hosts site.yml
	ansible-playbook playbooks/web-ui.yml
unmake:
	ansible-playbook playbooks/unmake.yml



