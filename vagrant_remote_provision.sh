#!/usr/bin/env bash
vagrant up --no-provision
ansible-playbook -i ./playbooks/inventory --limit remote_vagrant -v ./playbooks/run_nginx_container.yml