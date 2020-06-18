#!/bin/bash

# Loop for 10k
# Write to test-groups.ldif

for gid_number in {1004..11004}
do
echo "
dn: cn=test-group${gid_number},ou=Group,dc=puppetdebug,dc=vlan
objectClass: posixGroup
objectClass: top
cn: test-group${gid_number}
userPassword: {crypt}x
gidNumber: ${gid_number}
memberUid: uid=ldapuser1,ou=People,dc=puppetdebug,dc=vlan
memberUid: uid=ldapuser2,ou=People,dc=puppetdebug,dc=vlan
" >> test-groups.ldif
done

