if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BUDDY1609/koyeb-auto-filter-bot /vps
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /vps
fi
cd /vps
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py
