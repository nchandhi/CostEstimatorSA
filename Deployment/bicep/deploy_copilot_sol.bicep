@description('Specifies the location for resources.')
param solutionLocation string
param identity string

param environmentUrl string
param applicationId string
@secure()
param clientSecret string
param tenant string
param environmentId string
param baseUrl string


resource deploy_copilot_sol 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
  kind:'AzureCLI'
  name: 'deploy_copilot_sol'
  location: solutionLocation // Replace with your desired location
  identity:{
    type:'UserAssigned'
    userAssignedIdentities: {
      '${identity}' : {}
    }
  }
  properties: {
    azCliVersion: '2.25.0'
    primaryScriptUri: '${baseUrl}Deployment/scripts/deploy_copilot_sol.sh' // deploy-azure-synapse-pipelines.sh
    arguments: '${environmentUrl} ${applicationId} ${clientSecret} ${tenant} ${environmentId} ${baseUrl}' // Specify any arguments for the script
    timeout: 'PT1H' // Specify the desired timeout duration
    retentionInterval: 'PT1H' // Specify the desired retention interval
    cleanupPreference:'Always'
  }
}
