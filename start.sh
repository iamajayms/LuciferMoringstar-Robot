if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iamajayms/LuciferMoringstar-Robot /Damon
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Damon
fi
cd /LuciferMoringstar-Robot
pip3 install -U -r requirements.txt
echo "Starting Damon...."
python3 main.py
