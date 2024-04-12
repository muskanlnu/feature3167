module flexibleServer 'br/public:avm/res/db-for-postgre-sql/flexible-server:0.1.3' = {
  name: 'flexibleServerDeployment'
  params: {
    // Required parameters
    name: 'dfpsfspvt001'
    skuName: 'Standard_D2s_v3'
    tier: 'GeneralPurpose'
    // Non-required parameters
    administratorLogin: 'adminUserName'
    administratorLoginPassword: '<administratorLoginPassword>'
    configurations: [
      {
        name: 'log_min_messages'
        source: 'user-override'
        value: 'INFO'
      }
      {
        name: 'autovacuum_naptime'
        source: 'user-override'
        value: '80'
      }
    ]
    databases: [
      {
        charset: 'UTF8'
        collation: 'en_US.utf8'
        name: 'testdb1'
      }
      {
        name: 'testdb2'
      }
    ]
    delegatedSubnetResourceId: '<delegatedSubnetResourceId>'
    diagnosticSettings: [
      {
        eventHubAuthorizationRuleResourceId: '<eventHubAuthorizationRuleResourceId>'
        eventHubName: '<eventHubName>'
        metricCategories: [
          {
            category: 'AllMetrics'
          }
        ]
        name: 'customSetting'
        storageAccountResourceId: '<storageAccountResourceId>'
        workspaceResourceId: '<workspaceResourceId>'
      }
    ]
    geoRedundantBackup: 'Enabled'
    location: '<location>'
    privateDnsZoneArmResourceId: '<privateDnsZoneArmResourceId>'
    roleAssignments: [
      {
        principalId: '<principalId>'
        principalType: 'ServicePrincipal'
        roleDefinitionIdOrName: 'Owner'
      }
      {
        principalId: '<principalId>'
        principalType: 'ServicePrincipal'
        roleDefinitionIdOrName: 'b24988ac-6180-42a0-ab88-20f7382dd24c'
      }
      {
        principalId: '<principalId>'
        principalType: 'ServicePrincipal'
        roleDefinitionIdOrName: '<roleDefinitionIdOrName>'
      }
    ]
    tags: {
      Environment: 'Non-Prod'
      'hidden-title': 'This is visible in the resource name'
      Role: 'DeploymentValidation'
    }
  }
}
