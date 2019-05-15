!/bin/bash

createVm() 
{
    createdVms=$1
    vmName=$2
    groupName=$3

    createdVm=$(az vm list --query [].name | grep -E $createdVms)
    if 
        [
            -z $createdVm   
        ]; then 
            az disk create --name AlphaDrive \
            -g $groupname \
            --size-gb 30 \
            --location southcentralus 
            az vm create --name $VMname \
            --resource-group $groupname \
            --image UbuntuLTS \
            --size B1S \
            --attach-os-disk AlphaDrive \
            --custom-data config.txt



            echo "Welcom to your virtual machine"
    else
        exit 1
    fi
}
deleteVm()
{
    createdVms=$1
    vmName=$2
    groupName=$3

    createdVm=$(az vm list --query [].name | grep -E $createdVms)
    if 
        [
            -z $createdVm   
        ]; then 
            az vm delete --name $VMname \
            --resource-group $groupname 

            echo "deleted"
    else
        exit 1
    fi
}
command $1
$2 $3
