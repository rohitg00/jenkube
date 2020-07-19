# jenkube
## Let’s Come to our Project/Task, So what I have build today❓ Excited…
1. Create container image that’s has Jenkins installed using Dockerfile Or You can use the Jenkins Server on RHEL 8/7, When we launch this image, it should automatically start the Jenkins service in the container.
2. Create a job chain of job1, job2, job3 and job4 using build pipeline plugin in Jenkins
3. Job1: Pull the Github repo automatically when some developers push repo to Github.
4. Job2 :
→ By looking at the code or program file, Jenkins should automatically start the respective language interpreter installed image container to deploy code on top of Kubernetes ( eg. If code is of HTML, then Jenkins should start the container that has HTML already installed )
→ Expose your pod so that testing team could perform the testing on the pod
→ Make the data to remain persistent ( If server collects some data like logs, other user information )
5. Job3: Test your app if it is working or not.
6. Job4 : If an app is not working, then send email to the developer with error messages and redeploy the application after code is being edited by the developer

# Refer my medium blog for more:
[Automation using Kubernetes from Developer to Production System for CI/CD🤠](https://medium.com/@ghumare64/automation-using-kubernetes-from-developer-to-production-system-for-ci-cd-b766ea783e?source=friends_link&sk=7cc8ae4e63e787ce19eefdaee8e49599)

# Author
[Rohit Ghumare](https://github.com/rohitg00)
