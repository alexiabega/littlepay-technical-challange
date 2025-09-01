# LittlePay Technical Test
 I have created a very simple aplication that when it runs, it prints the famous "Hello world!" when accessing it at http://localhost:5000 .

 There are multiple alternatives for you to run this application:

 ### Option 1: Simple Local Run
 (If you want to use this option you have to make sure you have Python insalled on your local machine)

 Install Python dependencies:
 ```bash
 pip install -r requirements.txt
 ```
 Run the application:
 ```bash
 python app.py
 ```

 ### Option 2: Local Automated Run
 Acording to the instructions for this challange, I should assume that my teammates have MacBooks with nothing installed on them, so if the first thing that they need to do, right after getting their MacBooks is to run this code, they have no time to independently download Docker Desktop. Because of this, I found this article: https://dev.to/mochafreddo/running-docker-on-macos-without-docker-desktop-64o to run Docker without them needing to take time on installing Docker Desktop to their local machines. With all this information gathered I decided to create a script that when run, it will install everything that is not in the machine and run the application itself
 
 For this approach you first need to give execution rights to your script:
 ```bash
 chmod +x run-application.sh
 ```

 Then run the script itself:
 ```bash
 ./run-application.sh
 ```

 ### Option 3: Fully Automated Run
 This is a GitOps Approach, the only thing that the my teamates need to have to their local machine is access to this project and the EKS which this project is deployed to. Every time they push a change in the main branch, the workflow automatically builds the new image and pushes it to our ECR. After that it ensured a continious deployment in our cluster.