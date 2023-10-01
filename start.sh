if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/parshucr123/FASTDOWNLOAD-BOT.git /FASTDOWNLOAD-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FASTDOWNLOAD-BOT 
fi
cd /FASTDOWNLOAD-BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
