#/bin/sh

# Start backup
print "Start backup source file to ~/.hash_backup\n"
if [ -d "~/.hash_backup" ]; then
    mkdir ~/.backup
fi
if [ -f "~/.bashrc" ]; then
    mv ~/.bashrc ~/.backup
fi
if [ -f "~/.bash_profile" ]; then
    mv ~/.bash_profile ~/.backup
fi
print "End backup source file\n"

print "Start install bash...\n"
ln -s .bashrc ~/
ln -s .bash_profile ~/
ln -s .alias_hash ~/
