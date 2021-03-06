FROM eclipse/ubuntu_jdk8

RUN 	export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)";\
	echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list;\
	curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -;\
	sudo apt-get update -y && sudo apt-get install google-cloud-sdk -y;\
	sudo apt-get install google-cloud-sdk-app-engine-java -y
