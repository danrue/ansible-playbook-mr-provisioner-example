provision: roles
	ansible-playbook -e mr_provisioner_auth_token=$(AUTH_TOKEN) main.yml

roles:
	ansible-galaxy install -p roles -r requirements.yml

clean:
	rm -rf roles builds *.retry
