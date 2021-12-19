#!/bin/bash
qemu-img convert -p -O qcow2 /mnt/pve/VMs/images/102/vm-102-disk-0.qcow2 /mnt/pve/Backups/export_vms/nome_da_exportacao.qcow2
scp /mnt/pve/Backups/export_vms/nome_exportacao.qcow2 root@192.168.0.201:/media/geral/suporte/VM_EXPORT/