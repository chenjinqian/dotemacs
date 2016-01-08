My dotemacs configuration files.

Basicly, I use pucell's emacs configuration  (Link-here) , with different themes and thisconfiguration file. At first I try to do everything myself, then one day I cloned his repo on github, and I find I just get amolst everything I wanted. So, thank you so much. And here is some more thing I did, to make emacs better for me. It will be lucky if you find it usefull or inspired by it.

I have use emacs as my first editor for four years. It's great editor, but it seems not friendly to my little finger. Here is what happend to me, my solutions and the out comes.

1, swap the Ctrl key.
I use config this in system level, so I can use CapsLock as Ctrl key everywhere in my computer. It save me a lot of pain. Configure file is at /etc/default/keyboard,  and my OS is Ubuntu. Didn't see the neccery to swap the key within emacs, and I didn't find a way to do this, maybe not possible.

2, Try to not leave the main areo.
I hate press those "#$%[`:{}"  symbols, it make my finger leave the comfort zone, I rather press a key sequence. So I use ringmap. Now I can press almost every symbols without moving my finger too long. The keybindings should still be proved.

3, Do not press a key for too long.
One day I work in emacs for five hours, editing some text. Until then I find out my finger is really in pain. I didn't believe it before, but it seems the rumour is true. I find that the main reason is that I have to press the ctrl key all the time, as I move between the text, stop and decide what to do next. I changed to evil-mode for a while, and try some thing like control-mode. It is not easy to get used to another key set, and constantly changing mode make me nervous. So, after some searching, I make some repeate functions. For example, now if I want to move backward in 10s chars, I can just press Ctrl-u bbbbbbbbbbbb, in this way I do not have to press Ctrl key for a long time. Similar to forward and delete. One fact is that, if you want to press C-b right, you have to press Ctrl key first, and release it after you release 'b' key, so you just press the Ctrl key during all these 'b' key. In this way, you can not be really fast. Number prefix won't help much, cause it's way harder to press. There are some other keybinding, now I can get all my job done without pressing any key more than 1sec. So far so good for me.

4. other shortcut I find usefull. Including clear the buffer, eval one piece of python code, navagating between the frames quickly. No special reason, just personal preferences.
