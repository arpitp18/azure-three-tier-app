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

