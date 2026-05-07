/**
 * =============================================================================================
 * Name : Embedded Messaging Configuration
 * Description : Configuration file for Salesforce Embedded Messaging snippet.
 * Update these values with your Salesforce organization details.
 *
 * Author : Carlos Maltese - Salesforce
 * Created Date : 2026-05-07
 * =============================================================================================
 */

const EmbeddedMessagingConfig = {
  // Your Salesforce Organization ID
  orgId: '00DWt00000GFp5p',
  
  // Queue name from your Salesforce org
  queueName: 'miawtest',
  
  // Your Salesforce site URL (from Embedded Messaging setup)
  siteUrl: 'https://storm-d9385041c074ca.my.site.com/ESWmiawtest1778150455236',
  
  // SCRT URL for secure communication
  scrtUrl: 'https://storm-d9385041c074ca.my.salesforce-scrt.com',
  
  // Language code
  language: 'en_US',
  
  // Debug mode - set to true to see additional console logs
  debug: true
};

// Validate configuration
function validateEmbeddedMessagingConfig() {
  const required = ['orgId', 'queueName', 'siteUrl', 'scrtUrl'];
  
  for (const field of required) {
    if (!EmbeddedMessagingConfig[field]) {
      console.error(`Missing required configuration: ${field}`);
      return false;
    }
  }
  
  if (EmbeddedMessagingConfig.debug) {
    console.log('✅ Embedded Messaging Configuration validated:', EmbeddedMessagingConfig);
  }
  
  return true;
}

// Export for use in other scripts
if (typeof module !== 'undefined' && module.exports) {
  module.exports = EmbeddedMessagingConfig;
}
