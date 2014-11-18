A very crude bastard of a plugin to display a *graphical* scroll indicator like this one:
![scroll](http://i.imgur.com/whe51kv.gif)

Compatible with [vim-airline](https://github.com/bling/vim-airline) and similiar.

Usage:

    ScrollBar()
    
Insert into you status line (example from vim-airline):

    let g:airline_section_y = airline#section#create(['%{ScrollBar()}'])
