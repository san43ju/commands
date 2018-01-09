#!/bin/bash -x 

old_ip_address="<OLD_IP_ADDRESS_HERE>"
ip_address="<NEW_IP_ADDRESS_HERE>"

sed -i -e "s/${old_ip_address}/${ip_address}/g" $ORACLE_HOME/network/admin/tnsnames.ora

echo ""
echo "Changed tnsnames:" 
cat $ORACLE_HOME/network/admin/tnsnames.ora
echo ""


sed -i -e "s/${old_ip_address}/${ip_address}/g" $ORACLE_HOME/network/admin/listener.ora 

echo ""
echo "Changed listener:"
cat $ORACLE_HOME/network/admin/listener.ora
echo ""


sed -i -e "s/${old_ip_address}/${ip_address}/g" $ORACLE_HOME/sysman/config/emd.properties

echo ""
echo "Changed emd:"
grep ${ip_address} $ORACLE_HOME/sysman/config/emd.properties
echo ""
