module flexibleServer 'br/public:avm/res/db-for-postgre-sql/flexible-server:0.1.3' = {
  name: 'backstage-postgresql-poc'
  params: {
    // Required parameters
    name: 'backstage-postgresql-poc'
    skuName: 'Standard_D2s_v3'
    tier: 'GeneralPurpose'
    // Non-required parameters
    administrators: [
      {
        objectId: '<objectId>'
        principalName: '<principalName>'
        principalType: 'ServicePrincipal'
      }
    ]
    availabilityZone: '1'
    backupRetentionDays: 20
    configurations: [
      {
        name: 'log_min_messages'
        source: 'user-override'
        value: 'INFO'
      }
    ]
    // customerManagedKey: {
    //   keyName: '<keyName>'
    //   keyVaultResourceId: '<keyVaultResourceId>'
    //   userAssignedIdentityResourceId: '<userAssignedIdentityResourceId>'
    // }
    databases: [
      {
        charset: 'UTF8'
        collation: 'en_US.utf8'
        name: 'db1'
      }
      {
        name: 'db2'
      }
    ]
    // diagnosticSettings: [
    //   {
    //     eventHubAuthorizationRuleResourceId: '<eventHubAuthorizationRuleResourceId>'
    //     eventHubName: '<eventHubName>'
    //     metricCategories: [
    //       {
    //         category: 'AllMetrics'
    //       }
    //     ]
    //     name: 'customSetting'
    //     storageAccountResourceId: '<storageAccountResourceId>'
    //     workspaceResourceId: '<workspaceResourceId>'
    //   }
    // ]
    enableTelemetry: false
    firewallRules: [
      {
        endIpAddress: '0.0.0.0'
        name: 'AllowAllWindowsAzureIps'
        startIpAddress: '0.0.0.0'
      }
      {
        endIpAddress: '10.10.10.10'
        name: 'test-rule1'
        startIpAddress: '10.10.10.1'
      }
      {
        endIpAddress: '100.100.100.10'
        name: 'test-rule2'
        startIpAddress: '100.100.100.1'
      }
    ]
    geoRedundantBackup: 'Disabled'
    highAvailability: 'SameZone'
    location: '<location>'
    // managedIdentities: {
    //   userAssignedResourceIds: [
    //     '<managedIdentityResourceId>'
    //   ]
    // }
    storageSizeGB: 1024
    tags: {
      Environment: 'Non-Prod'
      'hidden-title': 'This is visible in the resource name'
      Role: 'DeploymentValidation'
    }
    version: '14'
  }
}
