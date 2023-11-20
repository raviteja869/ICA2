const { exec } = require('child_process');

const environment = process.env.INPUT_ENVIRONMENT;

console.log(`Deploying to ${environment} environment...`);

// Example of a deployment command
// Modify this according to your deployment process
const deployCommand = `echo Deploying application to ${environment}`;

exec(deployCommand, (error, stdout, stderr) => {
  if (error) {
    console.error(`Deployment error: ${error}`);
    process.exit(1);
  }
  console.log(`Deployment output: ${stdout}`);
});
