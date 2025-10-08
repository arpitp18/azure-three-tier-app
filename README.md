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
- Backend pool - Select your frontend VMSS (This will be created in next step and you can add it later)
- Loadbalancing Rule - Acording to app logic

  <img width="587" height="321" alt="image" src="https://github.com/user-attachments/assets/bf55c888-c536-4e20-900e-97d52b34e887" />
  <img width="616" height="323" alt="image" src="https://github.com/user-attachments/assets/b1484197-2e8c-447b-abd9-68236dc1b7b4" />

#### Create Private/Internal Loadbalancer

<img width="947" height="321" alt="image" src="https://github.com/user-attachments/assets/45eeb2d8-e9f4-43c8-a941-187eebf3cf87" />

- Frontend IP Config - Private IP (create new or use existing in private subnet)
- Backend pool - Select your backend VMSS (This will be created in next step and you can add it later)
- Loadbalancing Rule - Acording to app logic

  <img width="599" height="356" alt="image" src="https://github.com/user-attachments/assets/e706937d-112d-4b44-bdc2-20edd6985adb" />

### Create KeyVault

- KeyVault will be used to store DB related secrets

- Create new KeyValut and assign your user proper RBAC role so that you can create secrets in key vault
    - Below secrets needs to be created

      <img width="744" height="361" alt="image" src="https://github.com/user-attachments/assets/8b6397aa-400d-4067-b1c1-690181ec703d" />

**Note:** Follow postgres creation instruction first if secret creation seem confusing. 

#### User Assigned Identity

- Create user-assigned identity and provide proper RBAC roles on key vault as well as your backend VMSS/Instance so that it can fetch secrets.

<img width="943" height="310" alt="image" src="https://github.com/user-attachments/assets/4980feeb-0cc7-4ac8-a302-019609f69b90" />

### Create Azure Postgres

<img width="943" height="392" alt="image" src="https://github.com/user-attachments/assets/75261041-6fd6-46a4-9dee-808cf98a52c4" />

- Create DB

<img width="805" height="305" alt="image" src="https://github.com/user-attachments/assets/a829f3ce-99fd-43c0-8815-540508374db3" />

- Networking - You need to create Private endpoint which integrates with your DB subnet. In network policies select NSG

<img width="882" height="398" alt="image" src="https://github.com/user-attachments/assets/49938583-ae36-4fe4-821a-6abb4f9ac73f" />

<img width="763" height="334" alt="image" src="https://github.com/user-attachments/assets/bc2155f1-b7f7-42cc-94cf-ec58d6dea007" />

- Assosiation with subnet, PE creates seperate NIC and private link resource itself
- Enable integration with Private DNS zone while creating PE

<img width="944" height="364" alt="image" src="https://github.com/user-attachments/assets/be9a84c2-b164-48e4-9559-1241a2eee599" />

<img width="926" height="403" alt="image" src="https://github.com/user-attachments/assets/c674eaa6-149c-4079-8a98-c5b9f139a86f" />

- VNET link

<img width="947" height="343" alt="image" src="https://github.com/user-attachments/assets/8eb022b9-f97b-4ca7-a793-4c472ba7bcf1" />


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

**Note:** Here at this stage you would not be having private IP of your internal loadbalancer. So you can test it and for actual end to end implementation, run this command again when you have private IP of LB handy.

### Create VMSS for backend

- Create VMSS same way you have created for frontend.
- On top of that install AZ CLI in backend vm

```
key_vault_id={id of keyvault}

# Get Key Vault name from the Key Vault ID
KEY_VAULT_NAME=$(echo "$key_vault_id" | awk -F/ '{print $NF}')
echo "Using Key Vault: $KEY_VAULT_NAME"

# Explicitly login with Managed Identity
echo "Logging in to Azure CLI using managed identity..."
az login --client-id {clientid} --allow-no-subscriptions

you will get JSON response of user assigned identity is being used at this point.

# Get secrets from Key Vault using Managed Identity
echo "Retrieving database credentials from Key Vault using Managed Identity..."
DB_USERNAME=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-username" --query "value" -o tsv)
DB_PASSWORD=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-password" --query "value" -o tsv)
DB_HOST=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-host" --query "value" -o tsv)
DB_NAME=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-name" --query "value" -o tsv)
DB_PORT=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-port" --query "value" -o tsv)
SSL_MODE=$(az keyvault secret show --vault-name "$KEY_VAULT_NAME" --name "db-sslmode" --query "value" -o tsv)

# Verify all required secrets were retrieved
if [ -z "$DB_USERNAME" ] || [ -z "$DB_PASSWORD" ] || [ -z "$DB_HOST" ] || [ -z "$DB_NAME" ] || [ -z "$DB_PORT" ] || [ -z "$SSL_MODE" ]; then
  echo "ERROR: Failed to retrieve all required database secrets from Key Vault. Provisioning cannot continue."
  echo "Missing secrets:"
  [ -z "$DB_USERNAME" ] && echo "- db-username"
  [ -z "$DB_PASSWORD" ] && echo "- db-password"
  [ -z "$DB_HOST" ] && echo "- db-host"
  [ -z "$DB_NAME" ] && echo "- db-name"
  [ -z "$DB_PORT" ] && echo "- db-port"
  [ -z "$SSL_MODE" ] && echo "- db-sslmode"
  exit 1
fi

echo "Successfully retrieved all database configuration from Key Vault."

# Ensure DNS resolution is working before trying to connect to the database
echo "Checking DNS resolution for database host: $DB_HOST"
max_attempts=20
attempt=1
while [ $attempt -le $max_attempts ]; do
  echo "DNS resolution attempt $attempt of $max_attempts..."
  if nslookup "$DB_HOST" > /dev/null 2>&1; then
    echo "Successfully resolved database host: $DB_HOST"
    break
  else
    echo "Failed to resolve database host. Waiting 15 seconds before retry..."
    sleep 15
    attempt=$((attempt+1))
  fi
done

if [ $attempt -gt $max_attempts ]; then
  echo "Failed to resolve database host after $max_attempts attempts. Proceeding anyway..."
fi

# Start container
docker run -d -p 8080:8080   -e DB_USERNAME="$DB_USERNAME"   -e DB_PASSWORD="$DB_PASSWORD"   -e DB_HOST="$DB_HOST"   -e DB_PORT="$DB_PORT"   -e DB_NAME="$DB_NAME"  
 -e SSL="$SSL_MODE"   -e PORT=8080   --restart always   {image name}
 
18653c0614d390332590aa667970fe94bfa6b9528067b6ca7ab2a0138f648284
root@three-tieEJSCK6:/home/azureuser/Terraform-Full-Course-Azure/lessons/day27/backend# docker ps
CONTAINER ID   IMAGE                       COMMAND           CREATED         STATUS         PORTS                                         NAMES
18653c0614d3   #############   "./backend-app"   6 seconds ago   Up 5 seconds   0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp   gracious_shirley

```

**Note: ** Make sure user-assigned identity is assosiated with Backend VM

### Testing

If all the steps and configurations are done properly, try accessing frontend UI with public IP of you load balancer.

<img width="778" height="377" alt="image" src="https://github.com/user-attachments/assets/523ee753-3c3a-434a-a535-6adaedc81e61" />

End to End flow should work and you would be able to add goals and UI will display them.

<img width="816" height="458" alt="image" src="https://github.com/user-attachments/assets/f54aea9d-94f3-435c-8112-4010b738495a" />

<img width="734" height="371" alt="image" src="https://github.com/user-attachments/assets/55d54f58-c446-425a-8cea-78748c6b37d1" />

**Notes:**

- You can follow sequence according to your preference.
- You can keep public IP assigned/or assign fresh for troubleshooting and get to know how application works and than remove all and enhance security.
