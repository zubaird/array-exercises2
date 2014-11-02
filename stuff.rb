



































$i = 0
$num = 3
thingie = []
until $i > $num do
     thingie << [$i,0] if tictac[0][$i].include?("X")
     puts $i
     $i += 1
end



$i = 0
thingie2 = []
until $i > $num do
     thingie2 << [$i,1] if tictac[1][$i].include?("X")
     puts $i
     $i += 1
end



$i = 0
thingie3 = []
until $i > $num do
     thingie3 << [$i,2] if tictac[2][$i].include?("X")
     puts $i
     $i += 1
end







$i = 0
$num = 2
thingie = []
until $i > $num do
   if tictac[0][$i].include?("X")

     $i += 1
  end
end



track = 0
thingie = []
ticrow0.each do |x|
  if tictac[track].include?("X")
    thingie << track
  end
  track += 1
end

i = 0
do while i <= 3
  if ticrow0[i].include? ("X")
    thingie << []
  end
end




#
# split grid in to separate arrays that represent a single row.
#
#
#
#

ticrow0 = []
ticrow1 = []
ticrow2 = []

tictac[0].each do |x|
  ticrow0 << x
end


tictac[1].each do |x|
  ticrow1 << x
end


tictac[2].each do |x|
  ticrow2 << x
end
