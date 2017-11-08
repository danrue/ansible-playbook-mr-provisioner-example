# Mr. Provisioner Example Playbook

This is a bare bones ansible playbook that shows how to use roles
[Linaro.erp-get-build](https://galaxy.ansible.com/Linaro/erp-get-build/)
and
[Linaro.mr-provisioner](https://galaxy.ansible.com/Linaro/mr-provisioner/)
to automate host provising using [Mr.
Provisioner](https://github.com/Linaro/mr-provisioner) and Ansible.

A more advanced usecase can be found at
[Linaro/erp-test-automation](https://github.com/Linaro/erp-test-automation/tree/master/erp-playbook).

## Usage

1. Install ansible. Latest version is recommended (tested with 2.3).
2. Log into your Mr. Provisioner instance and get an auth token by clicking on
   Users -> Tokens.
3. Modify hosts file to reference a machine that is assigned to you, and give
   its reserved IP address (IP is not yet dynamically retrieved).
4. Modify main.yml's mr_provisioner_url and mr_provisioner_preseed_name
   according to your needs. The preseed file should already exist in Mr.
   Provisioner.
5. Using your own auth token, run ``make AUTH_TOKEN="/XXXXXXXXXXXXXXXXXYYYYYYYYYYYYYYZZZZZZZZZZZZZZ="``

Note that every time the playbook is run, the host will be re-provisioned.
