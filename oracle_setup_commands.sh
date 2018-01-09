#!/bin/bash -x 

old_ip_address="127.0.0.1"
ip_address="10.211.55.17"

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
