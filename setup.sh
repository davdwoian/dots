if ! type "git" > /dev/null; then
    echo "failed: git not installed"
    exit 1
fi

base=$(pwd)

# nvchad setup
cd $base
git clone https://github.com/NvChad/NvChad nvim
cd $base/nvim/lua
ln -s ../../user/nvim/lua/custom custom

# omz setup
cd $base
git clone https://github.com/ohmyzsh/ohmyzsh zsh/.omz

# tmux setup
mkdir -p tmux
cd $base/tmux
git clone  https://github.com/gpakosz/.tmux .tmux
ln -s ./.tmux/.tmux.conf ./tmux.conf

echo "gited"
