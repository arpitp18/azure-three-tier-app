# azure-three-tier-app

## Manually Test you application in Azure (Using Azure Portal)

### Create Resource Group

- After successful login create resource group. e.g. "threetierdemo"

<img width="850" height="233" alt="image" src="https://github.com/user-attachments/assets/31d485bc-d253-4bfc-9259-8b1a53c029aa" />

### Create VNET

- Create VNET using Azure portal. You can opt for creating subnets at the time or creation or create seperate afterwards.

<img width="863" height="341" alt="image" src="https://github.com/user-attachments/assets/9cf61e12-20d3-4b7b-bb36-19575177d8ba" />

- I have created three subnets along with VNET
    - Frontend - Public subnet
    - Backend - Private subnet
    - DB - DB subnet
<img width="951" height="313" alt="image" src="https://github.com/user-attachments/assets/e51a3143-19e3-49c1-a9ba-b011cd99bfe5" />

### NSGs

- You will need three NSGs to assosiate with subnets

<img width="944" height="352" alt="image" src="https://github.com/user-attachments/assets/62beb089-fd65-4a36-ad58-96e09fae4536" />

#### Public NSG

- Inbound rules

  <img width="947" height="391" alt="image" src="https://github.com/user-attachments/assets/763d466e-5709-4ba8-8b37-a476c65d863a" />

- Outbound rules

  <img width="959" height="350" alt="image" src="https://github.com/user-attachments/assets/c9e75c65-75b0-49b1-9c42-2fe120164791" />

#### Private NSG

- Inbound rules

  <img width="949" height="351" alt="image" src="https://github.com/user-attachments/assets/74106329-12e3-4f33-a4aa-c6e60b697fc1" />

- Outbound rules

  <img width="953" height="364" alt="image" src="https://github.com/user-attachments/assets/953aa369-5cc3-453a-b9a8-dfe30b48338e" />

#### DB NSG

- Inbound rules

  <img width="955" height="361" alt="image" src="https://github.com/user-attachments/assets/53b248bf-32c8-41b4-a625-0ceddfe111eb" />

- Outbound rules

  <img width="959" height="356" alt="image" src="https://github.com/user-attachments/assets/f64fe203-d1eb-425a-b3b2-6d38a867ccee" />

Assosiate each NSG rules with its relevant subnet

<img width="955" height="394" alt="image" src="https://github.com/user-attachments/assets/72a86e1f-24e6-44f0-bde0-0d57c7335869" />

### Create Load Balancers

#### Create Public L4 Loadbalancer

- This will be used so that user can interact with public IP of LB to interact with frontend.

<img width="806" height="389" alt="image" src="https://github.com/user-attachments/assets/3c6da7b7-58ef-4612-a2a5-4cd534795962" />

- Frontend IP Config - Public IP (create new or use existing in public subnet)
- Backend pool - Select your VMSS (This will be created in next step and you can add it later)
- Loadbalancing Rule - Acording to app logic

  <img width="587" height="321" alt="image" src="https://github.com/user-attachments/assets/bf55c888-c536-4e20-900e-97d52b34e887" />
  <img width="616" height="323" alt="image" src="https://github.com/user-attachments/assets/b1484197-2e8c-447b-abd9-68236dc1b7b4" />


### Create VMSS for frontend

<img width="814" height="395" alt="image" src="https://github.com/user-attachments/assets/e7d63dc4-4030-4948-837b-e00aae9d4d38" />

- Make sure correct subnet and NSGs are being used for NIC

<img width="750" height="381" alt="image" src="https://github.com/user-attachments/assets/d6d5c7e8-03e3-42ba-9330-61773a66dfd5" />

- Go to created NIC and verify IP config and NSG

<img width="887" height="350" alt="image" src="https://github.com/user-attachments/assets/6ccdbf71-ed5f-4c93-9c8f-ecef087103a4" />

<img width="521" height="337" alt="image" src="https://github.com/user-attachments/assets/a82ec2d3-96b0-478b-a8ec-5879ecff726e" />

#### Configuring Frontend Application

- You can create script and while creating VMSS instance you can provide script in user data/input portion to run the script which basically updates package, installs docker, pull and run docker image which is nodejs application with correct port-forwarding

```
docker run -d -p 80:3000   -e PORT=3000   -e BACKEND_URL="http://{Private IP of your intenal load balancer}:8080"   --rest
art always   {full name of your image}

03dec9014a488198240b39ed334e8c31cfe22e3cf416dbb6aa9da19d114d7cfd

#docker ps
CONTAINER ID   IMAGE                          COMMAND                  CREATED         STATUS         PORTS                   
                  NAMES
03dec9014a48   ###############   "/nodejs/bin/node se…"   2 seconds ago   Up 2 seconds   0.0.0.0:80->3000/tcp, [::]:80->3000/tcp   infallible_zhukovsky
```

**Note:** Here at this stage you would not be having provate IP of your internal loadbalancer. So you can test it and for actual end to end implementation, run this command again when you have private IP of LB handy.

### Create VMSS for backend

- Create VMSS same way you have created for frontend.

```


```
