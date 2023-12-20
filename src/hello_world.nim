import math, arraymancer
import nimdata

echo DF.fromRange(0, 10).collect()

# echo "What's your name? "
# var name = readLine(stdin)
# while name == "":
#   echo "Please tell me your name: "
#   name = readLine(stdin) # no `var`, because we do not declare a new variable here

var s = "some string"
for idx, c in s[0 .. ^1]:
    echo "s[", idx, "]= ", c

for item in ["a","b"]:
  echo item, " at index "

for idx, item in ["a","b"]:
  echo item, " at index ", idx

when system.hostOS == "windows":
  echo "running on Windows!"
elif system.hostOS == "linux":
  echo "running on Linux!"
elif system.hostOS == "macosx":
  echo "running on Mac OS X!"
else:
  echo "unknown operating system"

proc divmod(a, b: int; res, remainder: var int) =
  res = a div b        # integer division
  remainder = a mod b  # integer modulo operation

# var
#   x, y: int
# divmod(8, 5, x, y) # modifies x and y
# echo x
# echo y

type
  Direction = enum
    north, east, south, west

# var x = east     # `x` is of type `Direction`; its value is `south`
# echo x            # prints "south"

var e = [1, 2, 3]
echo succ(e[2])

type
  CharSet = set[char]
var
  x: CharSet = {'a'..'z', '0'..'9'}
  z: CharSet = {'9'}
echo z <= x

for i, value in @[3, 4, 5]:
  echo "index: ", i, ", value:", $value

# const
#     x = @[1, 2, 3, 4, 5]
#     y = @[1, 2, 3, 4, 5]

# var
#     vandermonde = newSeq[seq[int]]()
#     row: seq[int]

# for i, xx in x:
#     row = newSeq[int]()
#     vandermonde.add(row)
#     for j, yy in y:
#         vandermonde[i].add(xx^yy)

# let foo = vandermonde.toTensor()

# echo foo