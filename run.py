import os
import sys;
import shutil;


def main():
    if(len(sys.argv) > 1):
        if(sys.argv[1] == 'pull'):
            pull()
        elif(sys.argv[1] == 'push'):
            push()
        else:
            print('Invalid argument!')
    else:
        print('Please pass some arguments: (pull or push)')


def pull():
    shutil.copyfile('/home/kwanele/Configs/i3/config', '/home/kwanele/.config/i3/config')
    shutil.copyfile('/home/kwanele/Configs/kitty/kitty.conf', '/home/kwanele/.config/kitty/kitty.conf')
    shutil.copyfile('/home/kwanele/Configs/.zshrc', '/home/kwanele/.zshrc')
    shutil.copyfile('/home/kwanele/Configs/.tmux.conf', '/home/kwanele/.tmux.conf')
    print('Done! configs pulled successfully!!!')

def push():
    shutil.copyfile('/home/kwanele/.config/i3/config','/home/kwanele/Configs/i3/config')
    shutil.copyfile( '/home/kwanele/.config/kitty/kitty.conf', '/home/kwanele/Configs/kitty/kitty.conf')
    shutil.copyfile( '/home/kwanele/.zshrc','/home/kwanele/Configs/.zshrc')
    shutil.copyfile( '/home/kwanele/.tmux.conf','/home/kwanele/Configs/.tmux.conf')
    os.system('git add . && git commit -m "-update configs" && git push')
    print('Done! configs pushed successfully!!!')

main()