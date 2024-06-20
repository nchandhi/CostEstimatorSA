# Prerequisites Guide 

Please follow the steps the below before deploying the solution. 

## Step 1: Create a Service Principal 
1. Navigate to the [Azure portal](https://portal.azure.com/)
2. Select "Microsoft Entra ID"
3. Select "App registrations" and click "+ New registration" 
4. provide a name, select `Accounts in this organizational directory only` under "Supported account types", leave "Redirect URI (optional)" blank and click register 
    * **Note**: take note of the service principle Ids, as you will need them in later steps
5. Navigate to the service principle you just created and click "Certificates & secrets", click "+ New client secret", provide a description and click "Add" 
    * **Note**: take note of the client secret value, as you will need it in later steps 

## Step 2: Create Power Platform Environment
To complete this step, you will need to have System Administrator on your tenant
1. Navigate to the [Power Platform Admin Centertal](https://admin.powerplatform.microsoft.com/home) and clixk on "Environments" on the left.
2. * **Note**: Once the environment is created copy the environment ID and environment URL for later use.
4. Also add SPN created to the environment as environment Admin.
 

