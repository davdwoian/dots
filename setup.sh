if ! type "git" > /dev/null; then
    echo "failed: git not installed"
    exit 1
fi

base=$(pwd)

# nvchad setup
git clone https://github.com/NvChad/NvChad nvim
ln -s $base/user/nvim/lua/custom ./nvim/lua/custom

# omz setup
git clone https://github.com/ohmyzsh/ohmyzsh zsh/.omz

# tmux setup
mkdir -p tmux
git clone  https://github.com/gpakosz/.tmux tmux/.tmux
ln -s $base/tmux/.tmux/.tmux.conf ./tmux/tmux.conf

echo "gited"
