.PHONY: run

containers:
	ansible-playbook -i inventory/hosts provision.yml
	bash -x scripts/dynamic-ip.sh
	ansible-playbook -i inventory/site-hosts site.yml
	bash  scripts/open-browser.sh 


