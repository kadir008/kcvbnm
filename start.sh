echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/kadir008/kfjkgfdjgd /kfjkgfdjgd
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/kadir008/kfjkgfdjgd -b $BRANCH /kfjkgfdjgd
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
