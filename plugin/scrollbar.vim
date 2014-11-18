function! ScrollBar()
  let percentage = (line(".")*100 / line("$"))
  let char = '░'
  let barlen = 0
  
  " establish bar length (if no value passed)
  if barlen == 0
    "              window width  leading string   "[" "] " 63%  margin
    let barlen = winwidth(0)/5 - 1 - 2 - 3 - 2
  else
    let barlen = barlen
  endif

  " define progress
  let chrs = barlen * percentage / 100
  " define progress to go
  let chrx = barlen * (100 - percentage) / 100

  " bar, initial string and start line
  let bar = "▒"
  " bar, progress
  while chrs
    let bar = bar . char
    let chrs = chrs - 1
  endwhile
  " bar, progress to go
  while chrx
    let bar = bar . " "
    let chrx = chrx - 1
  endwhile
  " bar, end line
  let bar = bar . "▒ "
  " bar, extra space if single digit
  if percentage < 10
    let bar = bar . " "
  endif
  " bar, percentage
  let bar = bar . percentage . "%"

  " clear command line
  " execute "normal \<C-l>:\<C-u>"

  " " capture cmdheight
  " let cmdheight = &cmdheight
  " " setting to 2+ avoids 'Press Enter...'
  " if cmdheight < 2
  "     let &cmdheight = 2
  " endif

  " show on command line
  return bar

  " " restore cmdheight
  " let &cmdheight = cmdheight

endfunction

