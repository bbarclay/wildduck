#! /bin/bash
# Careful when you run this file. If you have it ssh installed on a different port, this script, or one in here like it, caused us to get locked out and then having
# To try and figure out why we were locked out of our server took a while. So just be careful if you run this that you are using ssh on port 22. 

OURNAME=12_install_ufw_rules.sh

echo -e "\n-- Executing ${ORANGE}${OURNAME}${NC} subscript --"

#### UFW ####

ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 25/tcp
ufw allow 587/tcp
ufw allow 993/tcp
ufw allow 995/tcp
ufw --force enable
