def morse_encode(str)
bb=''
str.split.each do |word|
 bb <<  morse(word) + '  '
end
  bb.chop.chop
end
  
def morse(word)
code=''
morsey = { 'a' => ".-", 'b' => "-...", 'c' => "-.-.", 'd' => "-..", 'e' => ".", 'f' => "..-.", 'g' => "--.",

'h' => "....", 'i' => "..", 'j' => ".---", 'k' => "-.-", 'l'=>".-..", 'm' => "--", 'n'=> "-.", 'o'=> "---",
'p' => ".--.", 'q' => "--.-", 'r' => ".-.", 's'=> "...", 't'=> "-",'u'=>"..-",'v'=>"...-",'w'=>".--",'x'=>"-..-",
'y'=> "-.--",'z'=>"--.."} 

word.scan(/\w/).each do |letter|

code<< morsey[letter] + ' '

end
code.chop

end
