targetScope = 'subscription'

@maxLength(7)
@description('Optional. Unique identifier for the deployment. Will appear in resource names. Must be 7 characters or less.')
param identifier string = 'pg-poc'

@description('Optional. The location to deploy resources to.')
param location string = deployment().location

resource pgResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: '${identifier}-core-rg'
  location: location
}

module pg 'pg.bicep' = {
  scope: pgResourceGroup
  name: '${uniqueString(deployment().name, location)}-core'
  params: {
    location: location
    identifier: identifier
  }
}

