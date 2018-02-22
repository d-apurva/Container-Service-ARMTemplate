## **Docker Swarm Cluster Deployment**

Enter your Azure account portal, and click on the ( **+** ) button, and search for _Template deployment_.

Click _Template deployment_. In the next view, _Template deployment_ will show as the first item. After clicking the  **Create**  button, the views for creating Docker Swarm will appear.

After clicking **Create** , click on &quot;_Build your own templates in the editor_ &quot;.Copy the content of **azuredeploy.json** and paste it in _Edit template._ Click on **Save** button_._

After clicking **Save** , we can start with filling in the  **Basics**  configuration settings. The first field is to create a new _Resource Group_ for your Docker Swarm cluster with the name you specified.

Select the _Location_ of the data center.

Provide _SSH public key_, which is given on [https://github.com/d-apurva/Container-Service-ARMTemplate/blob/maste](https://github.com/d-apurva/Container-Service-ARMTemplate/blob/master/publickey.pub) [r/publickey.pub](https://github.com/d-apurva/Container-Service-ARMTemplate/blob/master/publickey.pub)  or follow the steps for generating SSH key from [https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-windows](https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-windows) . Select the generated files that have the extensions_ .PUB, _open them in your text editor, and paste them in the area just below the _SSH public key_ label.

Next you&#39;ll need to provide the number of _Node Count_. This number can be as high as 100. For the number of masters, we will use 1.

Provide the proper _Cluster Name._

Click on &quot;_I agree to the terms and conditions stated above&quot;._

 Here you can pass the validation by clicking on the _ **Purchase** __ _button. After clicking _ **Purchase** _, you will be redirected to your home page (the dashboard) where you will see that your Docker Swarm cluster is awaiting deployment.

Deploying Docker Swarm takes some time after which you will see the Docker Swarm resources on the dashboard. Click on any of them to see details of the deployed Docker Swarm cluster.

## Connect to the Master

Once you have created and deployed Docker Swarm, you will need to connect to the Master to be sure that everything is where it should be. Click on the Docker Swarm resource shown on the dashboard.

Select the _Master _item under Virtual Machine menu. When we click on Swarm master virtual machines and then select the **Overview** on the left side menu of the Swarm master detail view, we will notice the IP address in the result table. So, open putty ssh client .

Provide IP address with port 2200 . Click on _SSH_ in Connection section and go to _Auth_. Browse the private key provided in the repo or generate yours private key and click on **Open**.

A popup of PuTTY Security Alert will appear. Click on **Yes.**

Login as username **dockm**

Check the containers running by using command

    docker ps

Check the dockm running in the cluster .

Finally you can see the dockm running on the master IP .
