## Step 1: Ensure that the solution is imported to the correct environment 

Making sure the solution has been imported successfully in the target environment is critical to ensure configuration is being done in the desired environment.  

Please make sure you are in the right environment by ensuring the environment name is correct on the top right corner. 

Navigate to ‘solutions’ on the left side navigation of the [PowerApps Maker Portal] (make.powerapps.com).  

Confirm that ‘Project Cost Estimation Assistant’ has been successfully imported in the environment.  

![image](/Deployment/images/deployment/image1.png)

## Step 2: Update the Copilot 

Please follow the steps below to setup the copilot. 


### Step 2.1: Configure Knowledge Sources 

In the solution, go to Chatbots and click on Project Cost Estimate Assistant. Alternatively, the copilot can also be accessed by navigating to the [Copilot Studio Maker Portal](https://copilotstudio.preview.microsoft.com/). 

Navigate to the Knowledge section and click on ‘Add Knowledge’ 

This will give a list of all sources that can be used as knowledge sources for the copilot to leverage. Click on Files if you would like to directly upload the files that need to be searched on or you can also drop all the files on a SharePoint site and paste the URL of the Sharepoint site which will be used as the knowledge source by the copilot. 

Please note at the time of writing this document, the allowed limit per file is 3MB. If there are documents greater than 3MB then we would recommend splitting them to decrease file size. 

![image](/Deployment/images/deployment/image2.png)

### Step 2.2: Configure Topics 

Navigate to topics and open the ‘Create a New Form’ topic. This topic is used to redirect the user directly to the Capital Estimation app when a user requests to create a new estimate to the copilot. We will need to update the URL of this app in the Copilot. 

To find the URL of the app, go to the solution> Apps> Capital Estimation> Play (screenshot below). This will open the app in a new tab. Please copy the URL. 

![image](/Deployment/images/deployment/image3.png)

Switch back to your topic in Copilot Studio from Step 1 and open the message node. Replace the URL in the brackets with the app URL copied over from step 2 (screenshot below).  

![image](/Deployment/images/deployment/image4.png)

Navigate to the `Conversational Boosting` topic and open the ‘Create Generative Answers node. In properties, please make sure ‘Allow the AI to use it’s own general knowledge’ toggle is set to No. If this is yes, the copilot will use general information in addition to your knowledge documents which can lead to inaccurate replies. Only have this toggle on if you’d like the copilot to use general information in addition to your knowledge sources. 

![image](/Deployment/images/deployment/image5.png)


### Step 2.3: Configure Settings and Publish on Teams 

 Navigate to `Settings` from the top right and click on the `Generative AI` section. Choose the `Classic` experience for the Copilot to respond and click `Save`. This will have the copilot use trigger phrases configured in topics for identifying which topic to trigger based on User’s question.  

![image](/Deployment/images/deployment/image6.png)


Navigate to `Channels` from the menu and select `Teams` (Alternatively, another channel can be leveraged to publish the copilot as needed). Click, `Turn on Teams`. 

![image](/Deployment/images/deployment/image7.png)


Very shortly, an option to `Open Copilot` will appear. Click on the button which will open Microsoft Teams with the Copilot shown on the left hand side. Pin the Copilot so it stays persistent whenever Teams is being used. 

![image](/Deployment/images/deployment/image8.png)

 
![image](/Deployment/images/deployment/image9.png)
 

Publish the copilot by clicking on the `Publish` button at the top right. This will save all the configuration and publish the copilot. 


## Step 3: Power Automate Setup 

The following steps need to be performed to ensure all the workflows of this solution run in scope of the correct Power Platform environment and users. 
 
### Step 3.1: Update Power Automate workflows 

Navigate to `Solutions` on the left side navigation of the [PowerApps Maker Portal](https://make.powerapps.com/)

Go to ‘Cloud Flows’ and there should be 3 flows in the solution. 

![image](/Deployment/images/deployment/image10.png)

 
Open the ‘send email from generative action flow’ flow and select ‘Edit’ from the top left. 

Click on the ‘Send an email (V2)’ step in the flow and replace the email address in the ‘To’ field with the email alias of a user or queue you would like the emails to be sent too then hit Save. This functionality will come into play when the copilot’s response to the user is not satisfactory and the user would like the question to be sent to an agent/human for a more accurate response.  


![image](/Deployment/images/deployment/image11.png)
 

Open the ‘Send email on Estimate Submission’ flow and select ‘Edit’ from the top left. 

Click on the ‘Send an email (V2)’ step in the flow and replace the email address in the ‘To’ field with the email alias of a user or queue you would like the emails to be sent too. 

Additionally, in the body, replace the URL with the app URL with an Estimate record open (steps below on how to get this URL).  

To get the required URL, play the Capital Estimation app (same step as 2.2.2).  

Open an Estimate record (if one doesn’t exist, create a test record. We only need this to get the required URL). In the Estimate record, copy the URL but remove the GUID value on the right from it. You will see the URL in the browser with an open estimate record (red) and from the URL remove the GUID (orange). Copy the rest of the URL till the ‘=’. Screenshot below. 

![image](/Deployment/images/deployment/image12.png)

 
Paste the copied URL in the body field of the ‘Send email on Estimate Submission’ flow (from step 7) and click Save. 

 