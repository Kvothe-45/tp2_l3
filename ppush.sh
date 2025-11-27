
#!/bin/bash 

git pull 

git add * 

git commit -m "auto commit : '$1'" 

echo "commit success : '$1'" 