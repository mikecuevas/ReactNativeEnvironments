#!/bin/bash

# Install necessary packages
sudo apt install -y curl software-properties-common gcc-multilib lib32z1 lib32stdc++6

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /usr/share/keyrings/yarn-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# Install OpenJDK
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install -y openjdk-11-jdk

# Download and install Android Studio
curl -o android-studio.tar.gz https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.19/android-studio-2022.3.1.19-linux.tar.gz
tar -xzf android-studio.tar.gz
mv android-studio-2022.3.1.19-linux ~/android-studio-2022.3.1.19-linux
rm android-studio.tar.gz

# Set environment variables in .bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.bashrc
echo "export PATH=\$PATH:~/android-studio-2022.3.1.19-linux/android-studio/bin" >> ~/.bashrc

# Run Android Studio
~/android-studio-2022.3.1.19-linux/android-studio/bin/studio.sh

echo "Environment configuration completed."
