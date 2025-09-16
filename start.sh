if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/partik1165/UMESH-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /UMESH-BOT
fi
cd /Jisshu-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Jisshu filter bot...."
python3 bot.py
