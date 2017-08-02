const AWS = require('aws-sdk');

// Create service configuration object
const serviceConfiguration = {
  apiVersion: '2006-03-01',
  accessKeyId: process.env.S3_LINKS_ACCESS_KEY_ID,
  secretAccessKey: process.env.S3_LINKS_SECRET_KEY,
  signatureVersion: 'v4',
  s3ForcePathStyle: true // Minio Compatibility (https://minio.io)
};
if (process.env.hasOwnProperty('S3_LINKS_ENDPOINT_URL')) {
  serviceConfiguration.endpoint = new AWS.Endpoint(process.env.S3_LINKS_ENDPOINT_URL);
  serviceConfiguration.signatureVersion = 'v2';
}

// Create S3 client
module.exports = new AWS.S3(serviceConfiguration);
