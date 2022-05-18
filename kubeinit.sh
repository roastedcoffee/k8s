#! /bin/bash
landscape-sysinfo
sudo cp -i /etc/kubernetes.admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
echo -e "\033[38;5;46;48;5;16m`figlet -k kubernetes`\e[0m"
kubectl cluster-info
kubectl get node
kubeclt get pods
kubectl get all