### Running the example in OpenShift

The example can be built and run on OpenShift using a single goal:
    
    oc login ...

    oc new-project cameltest

    mvn fabric8:deploy

When the example runs in OpenShift, you can use the OpenShift client tool to inspect the status

To list all the running pods:

    oc get pods

Then find the name of the pod that runs this quickstart, and output the logs from the running pods with:

    oc logs <name of pod>

