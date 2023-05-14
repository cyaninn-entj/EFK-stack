
# cri download - arm
wget https://github.com/Mirantis/cri-dockerd/releases/download/v${VER}/cri-dockerd-${VER}.arm64.tgz
tar xvf cri-dockerd-${VER}.arm64.tgz

sudo kubeadm init --ignore-preflight-errors=all --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=172.31.49.40 --cri-socket /var/run/cri-dockerd.sock
## --apiserver-advertise-address=[ip] -> Controller 서버 IP.

kubeadm join 172.31.49.40:6443 --token c2k9m0.a8y8blhk7aph90uc \
        --discovery-token-ca-cert-hash sha256:7d0a115919422f24f7dcd05cd959d058f666ac98625064adbdc98998ecbd9bf6 --ignore-preflight-errors=all --cri-socket unix:///var/run/cri-dockerd.sock    

