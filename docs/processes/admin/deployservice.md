# deployservice

[English](deployservice.md) | [Русский](deployservice.ru.md)

The scenario for deployment of microservices from GitHub by admin in the delivery service company.

Macro process: [maintenance](../../macroprocesses/maintenance.md)

Responsible modules: [client application](../../frontend/adminclient.md), [backend service](../../backend/adminbackend.md)

## Process description

![maintenance_overall](../../img/maintenance_overall.png)

### Step-by-step execution

- Admin logs into the system and accesses the microservices repository on GitHub
- Admin selects the microservices to deploy and specifies the deployment parameters
- Initiate the deployment process
- System retrieves the selected microservices from GitHub and deploys them on the server
- System verifies the deployment status and reports any errors or issues
- Monitor the deployment status and troubleshoot any errors or issues
- Admin confirms the successful deployment and activates the microservices
