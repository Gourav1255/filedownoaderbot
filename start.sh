if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gourav1255/filedownoaderbot /filedownoaderbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filedownoaderbot
fi
cd /filedownoaderbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
