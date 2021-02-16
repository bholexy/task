1. Set up bucket in us-east-2 region and change bucket in terraform block to the newly created bucket

2. Create a key pair and change the "keyname" variable to the name of the key pair

3. Create aws_access_key and aws_secret_key to be supplied at runtime or exported as environment variable
	```export aws_access_key= "access key"
       export aws_secret_key= "secret key"
	 ```

4. Terraform init

5. Terraform apply