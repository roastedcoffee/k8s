#/bin/bash
#Verify containerd Stauts

sudo systemctl enable containerd
sudo systemctl restart containerd
sudo systemctl status containerd | nomore