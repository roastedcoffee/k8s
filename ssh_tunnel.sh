#/bin/bash
ssh -f -N -L 10.32.56.31:9001:kmanager01:22 k8suser@kmanager01
ssh -f -N -L 10.32.56.31:9002:kmanager02:22 k8suser@kmanager02
ssh -f -N -L 10.32.56.31:9003:kmanager03:22 k8suser@kmanager03
ssh -f -N -L 10.32.56.31:9004:kworker01:22 k8suser@kworker01
ssh -f -N -L 10.32.56.31:9005:kworker02:22 k8suser@kworker02
ssh -f -N -L 10.32.56.31:9006:kworker03:22 k8suser@kworker03
ssh -f -N -L 10.32.56.31:9007:kworker04:22 k8suser@kworker04
ssh -f -N -L 10.32.56.31:9008:kloadbl01:22 k8suser@kloadbl01
ssh -f -N -L 10.32.56.31:9009:kloadbl02:22 k8suser@kloadbl02
ssh -f -N -L 10.32.56.31:9010:kworker02:32323 k8suser@kworker02
