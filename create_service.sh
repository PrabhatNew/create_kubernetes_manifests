echo "Please enter the namespace(Please do not use just plain numbers as namespace, if you do so yaml file will not be applied.): "
echo "then press[ENTER]:"
read namespace

echo "Please enter a name for your service"
read service_name

echo "is your service dicoverable? Enter y for true and any other key for false"
read -p "Enter your choice. Yes(y) No(any other key) " choice
if [ "$choice" = "y" ]; then
echo "Press enter to continue"
read discover
discover=`echo -n true`

echo "please enter your service pattern, use comma to enter multiple for example setting,system "
read service_pattern
echo "Press  enter to continue"
read service_pattern_key
service_pattern_key=`echo -n servicePatterns:`
else
echo "press enter to continue"
read discover
discover=`echo -n false`
fi

echo "please enter the port number of your application"
read port
echo "Please note by default port and target port will be the same change it later if you need to(usually not required)"
echo "please enter your app name for service to select(This will be your deployment file)"
read app
cat >> $namespace-$service_name-service.yaml <<EOF
apiVersion: v1
kind: Service
metadata:
  name: $service_name
  namespace: $namespace
  annotations:
    isDiscoverable: '$discover'
    $service_pattern_key $service_pattern
spec:
  ports:
    - name: http
      protocol: TCP
      port: $port
      targetPort: $port
  selector:
    app: $app
  type: ClusterIP

EOF

echo "Your service file has been generated."
