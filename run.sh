podman login --tls-verify=false hub-aap2-workspace.apps.bm1.cloud.saberkan.online
podman pull --tls-verify=false hub-aap2-workspace.apps.bm1.cloud.saberkan.online/saberkan_okd_ee:latest
ansible-navigator run playbooks/deploy_vm.yml -i inventory.yml --eei hub-aap2-workspace.apps.bm1.cloud.saberkan.online/saberkan_okd_ee:latest --pa='--tls-verify=false'