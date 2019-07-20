my vim conf

ubuntu 14.04

wget https://codeload.github.com/vim/vim/tar.gz/v8.1.1717

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-cscope \
            --disable-gui \
            --without-x \
            --prefix=/root/bin/vim8
