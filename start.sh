echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kadir008/kcvbnm /kcvbnm
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kadir008/kcvbnm -b $BRANCH /kcvbnm
fi
cd /kcvbnm
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
