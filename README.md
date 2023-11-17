# ICA2
ICA 2: Comprehensive Project on GitHub Actions

Objective: This project is aimed to evaluate student's understanding and practical application of GitHub Actions concepts including Artifacts, Self-Hosted Runners, Package Management, Service Containers, and Custom Actions.

Materials:

A GitHub account
A basic web application project hosted on GitHub: GrahamAtCestarColllege/CBD3345_ICA2 (github.com)
Windows and Linux machines for self-hosted runners
Docker installed on the machines
Procedure:

Artifacts (45 minutes): Students are tasked with setting up a GitHub Actions workflow that runs unit tests on their application and stores the test reports as an Artifact. They should navigate to the 'Actions' tab of their repository to ensure that the test report is successfully stored.

Self-Hosted Runners (45 minutes): Students will set up a self-hosted runner on both a Windows and a Linux machine. They should then configure their workflow to run on both these self-hosted runners and demonstrate the successful execution of their workflows on both machines.

Package Management and Service Containers (45 minutes): Students will use GitHub Packages to store a Docker image of their application. They will then set up a Service Container in their workflow that uses this Docker image and runs some integration tests on the running container.

Custom Actions (45 minutes): Students should identify a common sequence of steps in their workflows and encapsulate it into a Custom Action. This could be something like setting up their testing environment or deploying their application. They should then refactor their workflow to use this custom action.

Presentation and Evaluation (60 minutes): Students should present their workflows to the class, demonstrating the successful execution of their workflows and explaining the design choices they made. They should then submit their workflows and custom actions to be evaluated.

Assessment:

Successful creation and usage of Artifacts: 20 points
Successful setup of Self-Hosted Runners on Windows and Linux: 20 points
Successful use of GitHub Packages and Service Containers: 20 points
Successful creation and usage of a Custom Action: 20 points
Explanation of workflow and design choices: 20 points
This activity will test the student's ability to practically apply various concepts of GitHub Actions. It will help them understand how these different concepts come together to create a comprehensive CI/CD pipeline. It should also help them understand the importance of reusable, modular code with the creation of the Custom Action.
