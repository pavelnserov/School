```bash
C:\Users\Pavel\kuber>kubectl apply -f deploy.yaml  
The Deployment "deployment" is invalid: spec.template.metadata.labels: Invalid value: map[string]string(nil): `selector` does not match template `labels`  

C:\Users\Pavel\kuber>kubectl apply -f deploy.yaml  
deployment.apps/deployment created    

C:\Users\Pavel\kuber>kubectl get pod  
NAME                          READY   STATUS              RESTARTS   AGE  
deployment-7c658794b9-bgnpc   0/1     ContainerCreating   0          4s  
deployment-7c658794b9-qfbt6   0/1     ContainerCreating   0          4s  
nginx                         1/1     Running             0          12m  
web                           1/1     Running             0          19m  
webreplica-x2pqs              1/1     Running             0          9m10s  
  
C:\Users\Pavel\kuber>  
C:\Users\Pavel\kuber>
C:\Users\Pavel\kuber>
C:\Users\Pavel\kuber>kubectl get pod
NAME                          READY   STATUS    RESTARTS   AGE
deployment-7c658794b9-bgnpc   1/1     Running   0          17s
deployment-7c658794b9-qfbt6   1/1     Running   0          17s
nginx                         1/1     Running   0          12m
web                           1/1     Running   0          19m
webreplica-x2pqs              1/1     Running   0          9m23s

C:\Users\Pavel\kuber>kubectl delete pod deployment-7c658794b9-qfbt6
pod "deployment-7c658794b9-qfbt6" deleted

C:\Users\Pavel\kuber>kubectl get pod
NAME                          READY   STATUS              RESTARTS   AGE
deployment-7c658794b9-bgnpc   1/1     Running             0          2m8s
deployment-7c658794b9-tdsg8   0/1     ContainerCreating   0          3s
nginx                         1/1     Running             0          14m
web                           1/1     Running             0          21m
webreplica-x2pqs              1/1     Running             0          11m

C:\Users\Pavel\kuber>
C:\Users\Pavel\kuber>kubectl get pod
NAME                          READY   STATUS    RESTARTS   AGE
deployment-7c658794b9-bgnpc   1/1     Running   0          2m17s
deployment-7c658794b9-tdsg8   1/1     Running   0          12s
nginx                         1/1     Running   0          14m
web                           1/1     Running   0          21m
webreplica-x2pqs              1/1     Running   0          11m

C:\Users\Pavel\kuber>
```
