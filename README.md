## **Deploying Docker Swarm Cluster**
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FClick2Cloud%2FDayPlannerApp%2Fmaster%2Fdeploy%2Fazuredeploy.json" target="_blank">
      <img src="http://azuredeploy.net/deploybutton.png"/>
</a>


- Enter your Azure account portal, and click on the ( **+** ) button, and search for **Template deployment**.

- Click on **Template deployment**. In the next view, **Template deployment** will show as the first item. After clicking the  **Create**  button, the views for creating Docker Swarm will appear.

- After clicking **Create**, click on **"Build your own templates in the editor".** Copy the content of **azuredeploy.json** and paste it in **Edit template**. Click on **Save** button.

- After clicking **Save**, we can start with filling in the  **Basics**  configuration settings. The first field is to create a new **Resource Group** for your Docker Swarm cluster with the name you specified.

- Select the **Location** of the data center.

- Provide _SSH public key_, which is given on [https://github.com/d-apurva/Container-Service-ARMTemplate/blob/maste](https://github.com/d-apurva/Container-Service-ARMTemplate/blob/master/publickey.pub) [r/publickey.pub](https://github.com/d-apurva/Container-Service-ARMTemplate/blob/master/publickey.pub)  or follow the steps for generating SSH key from [https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-windows](https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-windows) . Select the generated files that have the extensions_ .PUB, _open them in your text editor, and paste them in the area just below the _SSH public key_ label.

- Next you'll need to provide the number of **Node Count**. This number can be as high as 100. For the number of masters, we will use 1.

- Provide the proper **Cluster Name.**

- Click on **"I agree to the terms and conditions stated above"**.

- Here you can pass the validation by clicking on the **Purchase** button. After clicking  **Purchase**, you will be redirected to your home page (the dashboard) where you will see that your Docker Swarm cluster is awaiting deployment.

- Deploying Docker Swarm takes some time after which you will see the Docker Swarm resources on the dashboard. Click on any of them to see details of the deployed Docker Swarm cluster.

## Connecting to the Master Node

- Once you have created and deployed Docker Swarm, you will need to connect to the Master to be sure that everything is where it should be. Click on the Docker Swarm resource shown on the dashboard.

- Select the **Master item** under Virtual Machine menu. When we click on Swarm master virtual machines and then select the **Overview** on the left side menu of the Swarm master detail view, we will notice the IP address in the result table. So, open putty ssh client.

- Provide IP address with port **2200** . Click on **SSH** in Connection section and go to **Auth**. Browse the private key provided in the repo or generate yours private key and click on **Open**.

- A popup of PuTTY Security Alert will appear. Click on **Yes.**

- Login as username **dockm**

- Check the containers running by using command

    **docker ps**

- Check the dockm running in the cluster.

- Finally you can see the dockm running on the master IP.
