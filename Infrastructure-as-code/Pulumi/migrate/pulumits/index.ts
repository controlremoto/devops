import * as pulumi from "@pulumi/pulumi";
import * as aws from "@pulumi/aws";

const config = new pulumi.Config();
// Value of the Name tag for the EC2 instance
const instanceName = config.get("instanceName") || "ExampleAppServerInstance";
const appServer = new aws.ec2.Instance("app_server", {
    ami: "ami-08d70e59c07c61a3a",
    instanceType: aws.ec2.InstanceType.T2_Micro,
    tags: {
        Name: instanceName,
    },
});
export const instanceId = appServer.id;
export const instancePublicIp = appServer.publicIp;
