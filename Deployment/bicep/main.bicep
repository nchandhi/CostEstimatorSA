// ========== main.bicep ========== //
targetScope = 'resourceGroup'

@minLength(3)
@maxLength(6)
@description('Prefix Name')
param solutionPrefix string

param clientId string
@secure()
param clientSecret string
param environmentUrl string
param environmentId string

var solutionLocation = resourceGroup().location

var baseUrl = 'https://raw.githubusercontent.com/nchandhi/CostEstimatorSA/main/'

// ========== Managed Identity ========== //
module managedIdentityModule 'deploy_managed_identity.bicep' = {
  name: 'deploy_managed_identity'
  params: {
    solutionName: solutionPrefix
    solutionLocation: solutionLocation
  }
  scope: resourceGroup(resourceGroup().name)
}

module deployCopilot 'deploy_copilot_sol.bicep' = {
  name : 'deploy_copilot_sol'
  params:{
    solutionLocation: solutionLocation
    identity:managedIdentityModule.outputs.managedIdentityOutput.id
    baseUrl:baseUrl
    applicationId:clientId
    clientSecret:clientSecret
    environmentId:environmentId
    environmentUrl:environmentUrl
    tenant:tenant().tenantId
  }
  dependsOn:[managedIdentityModule]
}
