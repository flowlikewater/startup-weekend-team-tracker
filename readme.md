#Word count Create a website that uses a method to return how frequently a word appears in a given string.

##Link for the Heroku app: https://morning-bastion-69084.herokuapp.com/

##Getting Started These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

##Installation for Mac

###Prerequesite install Homebrew

$ ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
tell your system where to find the programs you install with Homebrew

$ echo ‘export PATH=/usr/local/bin:$PATH’ >> ~/.bash_profile
add this configuration to your open terminal window

$ source ~/.bash_profile
fix any problems it tells you about

$ brew doctor
###Install Ruby

$ brew install ruby-install

$ echo ‘source /usr/local/opt/chruby/share/chruby/chruby.sh’ >> ~/.bash_profile

$ echo ‘source /usr/local/opt/chruby/share/chruby/auto.sh’ >> ~/.bash_profile

$ echo “ruby-2.2" > ~/.ruby-version

$ source ~/.bash_profile

$ echo “gem: --no-rdoc --no-ri” > ~/.gemrc
###Install Postgres SQL

install Postgres

$ brew install postgres
tell Postgres where to find the database cluster where your databases will be stored:

echo “export PGDATA=/usr/local/var/postgres” >> ~/.bash_profile
This command will help some programs find Postgres more easily:

echo “export PGHOST=/tmp” >> ~/.bash_profile
To load these configuration changes, run:

source ~/.bash_profile
To start the Postgres Server

postgres
You’ll have to leave that window open while you need the server. To stop the server, press Ctrl + C (not Cmd + C). If you want Postgres to boot at startup and run in the background, run:

ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
To prepare for the next lesson, create a default database with your computer’s username:

createdb $USER
###Install Ruby

rbenv install -v 2.2.3

rbenv global 2.2.3

echo “gem: --no-document” > ~/.gemrc

gem install bundler

sudo gem install


###Install Gem
In project directory:
bundle install
