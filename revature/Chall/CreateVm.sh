az disk create -g notsGroup -n notsDisk -l southcentralus --size 30 

az vm create \
-g notsGroup \
-n notServer2 \
--size Standard_B2s \
--image UbuntuLTS \
--admin-username notsew \
--custom-data /home/joshweston/challange/vm-init.txt \
--generate-ssh-keys \
--attach-data-disk


