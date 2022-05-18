#/bin/bash
#Install containerd
echo "Installing Containerd Runtime ...."
sudo apt-get update && sudo apt-get install -y containerd tree
sudo mkdir -p /etc/containerd
sudo containerd config default | sudo tee /etc/containerd/config.toml
echo "Done Containerd install"