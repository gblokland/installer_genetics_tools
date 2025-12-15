# installer_genetics_tools

# Series of scripts to install standard genetic analysis tools in 'opt' directory


cd ~/code && git clone https://github.com/gblokland/installer_genetics_tools.git
mv installer_genetics_tools/installer_genetics_analysis_tools.sh ./
mv installer_genetics_tools/python_requirements*.txt ./
rm -r installer_genetics_tools
chmod +x installer_genetics_analysis_tools.sh
./installer_genetics_analysis_tools.sh
