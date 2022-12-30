echo "
version: 3
projects:
- name: $HEAD_BRANCH_NAME
  dir: $HEAD_BRANCH_NAME
  workspace: $HEAD_BRANCH_NAME
  workflow: terragrunt
  autoplan:
    enabled: true  
" > atlantis.yaml
