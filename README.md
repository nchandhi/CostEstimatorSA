# Project Cost Estimation Assistant Solution Accelerator

MENU: [**USER STORY**](#user-story) \| [**ONE-CLICK DEPLOY**](#one-click-deploy)  \| [**SUPPORTING DOCUMENTS**](#supporting-documents) \|
[**CUSTOMER TRUTH**](#customer-truth)


<h2><img src="Deployment/images/readMe/userStory.png" width="64">
<br/>
User story
</h2>

**Solution accelerator overview**

Enterprises spend a lot of time and resources to plan big projects that might involve people, equipment and infrastructure requirements. A key factor in prioritizing and green lighting these projects is accurate cost estimation.  Project requesters often struggle to find resources that outline the project request process, the forms they need to complete, and resources to aid in their completion of the forms.  They often reach out to the project estimator for help on all these things, burdening both the requester and the project estimator.

This solution accelerator helps both the requester and the estimator throughout the process; Project requesters are provided with links and guidance as to how to complete the request process, with the ability to use the Copilot to answer any questions they may have, thus drastically cutting down on the amount of questions the estimator receives.

It leverages Copilot Studio, Azure Open AI Service, and Power Platform to identify relevant documents, answer questions, accelerate project planning and cost estimate submissions.


**Scenario**

This solution will aid the project requesters by providing them with resources to complete their project requests, as well as alleviate the demands on the project estimator with adhoc queries from the requestors.

The sample data is sourced from public data sources. The documents are intended for use as sample data only.

<br/>

**Key features**

![Key Features](/Deployment/images/readMe/keyfeatures.png)

<br/>

This solution package includes the following:

1. A custom Copilot for Project Estimation
2. Sample public dataset
2. Power App to submit project requests
3. Power Automate Flows
4. Dataverse Tables for the project estimates 
5. A sample checklist for project estimation


**Below is an image of the solution accelerator.**

Copilot - Chat with project estimation document knowledgebase:

![Landing Page](/Deployment/images/copilot/image1.png)

Copilot - Email flow for human in the loop for complex questions:
![Landing Page](/Deployment/images/copilot/image2.png)

![Landing Page](/Deployment/images/copilot/image3.png)

New project request automation flow:
![Landing Page](/Deployment/images/copilot/image4.png)

<h2><img src="Deployment/images/readMe/oneClickDeploy.png" width="64">
<br/>
One-click deploy
</h2>

### Prerequisites

To use this solution accelerator, you will need access to an [Azure subscription](https://azure.microsoft.com/free/) with permission to create resource groups and resources. You will also need access to a Power Platform Environment with administrator access. While not required, a prior understanding of Azure Open AI, Copilot Studio and Power Apps will be helpful.

For additional training and support, please see:

1. [Copilt Studio](https://learn.microsoft.com/en-us/microsoft-copilot-studio/) 
2. [Power Platform](https://www.microsoft.com/en-us/power-platform/products/power-apps) 
3. [Azure Open AI](https://learn.microsoft.com/en-us/azure/ai-services/openai/) 


### Solution accelerator architecture
![image](/Deployment/images/readMe/architecture.png)


 > Note: Some features contained in this repository are in public preview. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/en-us/support/legal/preview-supplemental-terms).


### **How to install/deploy**

1. Please follow the [Prerequisites guide](./Deployment/Prerequisites.md) before deploying the solution 


2. Click the following deployment button to create the required resources for this accelerator in your environment.

   [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fnchandhi%2FCostEstimatorSA%2Fmain%2FDeployment%2Fbicep%2Fmain.json)


3. You will need to select an Azure Subscription, create/select a Resource group, Region, and a unique Solution Prefix. Provide the Client Id and Secret you created in previous step. 

   ![image](/Deployment/images/readMe/armDeployment.png)

4. When Deployment is complete, follow steps in [Deployment guide](./Deployment/CopilotStudioDeployment.md) to configure the connections.


<br/>
<br>
<h2><img src="./Deployment/images/readMe/supportingDocuments.png" width="64">
<br/>
Supporting documents
</h2>

Supporting documents coming soon.


<br>
<h2><img src="./Deployment/images/readMe/customerTruth.png" width="64">
</br>
Customer truth
</h2>
Customer stories coming soon.

<br/>


<h2>
</br>
Responsible AI Transparency FAQ 
</h2>

Please refer to [Transarency FAQ](./TRANSPARENCY_FAQ.md) for responsible AI transparency details of this solution accelerator.

<br/>
<br/>
---

## Disclaimers

This Software requires the use of third-party components which are governed by separate proprietary or open-source licenses as identified below, and you must comply with the terms of each applicable license in order to use the Software. You acknowledge and agree that this license does not grant you a license or other right to use any such third-party proprietary or open-source components.  

To the extent that the Software includes components or code used in or derived from Microsoft products or services, including without limitation Microsoft Azure Services (collectively, “Microsoft Products and Services”), you must also comply with the Product Terms applicable to such Microsoft Products and Services. You acknowledge and agree that the license governing the Software does not grant you a license or other right to use Microsoft Products and Services. Nothing in the license or this ReadMe file will serve to supersede, amend, terminate or modify any terms in the Product Terms for any Microsoft Products and Services. 

You must also comply with all domestic and international export laws and regulations that apply to the Software, which include restrictions on destinations, end users, and end use. For further information on export restrictions, visit https://aka.ms/exporting. 

You acknowledge that the Software and Microsoft Products and Services (1) are not designed, intended or made available as a medical device(s), and (2) are not designed or intended to be a substitute for professional medical advice, diagnosis, treatment, or judgment and should not be used to replace or as a substitute for professional medical advice, diagnosis, treatment, or judgment. Customer is solely responsible for displaying and/or obtaining appropriate consents, warnings, disclaimers, and acknowledgements to end users of Customer’s implementation of the Online Services. 

You acknowledge the Software is not subject to SOC 1 and SOC 2 compliance audits. No Microsoft technology, nor any of its component technologies, including the Software, is intended or made available as a substitute for the professional advice, opinion, or judgement of a certified financial services professional. Do not use the Software to replace, substitute, or provide professional financial advice or judgment.  

BY ACCESSING OR USING THE SOFTWARE, YOU ACKNOWLEDGE THAT THE SOFTWARE IS NOT DESIGNED OR INTENDED TO SUPPORT ANY USE IN WHICH A SERVICE INTERRUPTION, DEFECT, ERROR, OR OTHER FAILURE OF THE SOFTWARE COULD RESULT IN THE DEATH OR SERIOUS BODILY INJURY OF ANY PERSON OR IN PHYSICAL OR ENVIRONMENTAL DAMAGE (COLLECTIVELY, “HIGH-RISK USE”), AND THAT YOU WILL ENSURE THAT, IN THE EVENT OF ANY INTERRUPTION, DEFECT, ERROR, OR OTHER FAILURE OF THE SOFTWARE, THE SAFETY OF PEOPLE, PROPERTY, AND THE ENVIRONMENT ARE NOT REDUCED BELOW A LEVEL THAT IS REASONABLY, APPROPRIATE, AND LEGAL, WHETHER IN GENERAL OR IN A SPECIFIC INDUSTRY. BY ACCESSING THE SOFTWARE, YOU FURTHER ACKNOWLEDGE THAT YOUR HIGH-RISK USE OF THE SOFTWARE IS AT YOUR OWN RISK.  
