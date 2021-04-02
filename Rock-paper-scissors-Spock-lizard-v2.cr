def w(f,s)
if f==s
r="Tie"
end
if f.ord==128142&&(s.ord==9986||s.ord==129422)
r="💎 crushes " + s
end
if f.ord==128196&&s.ord==128142
r="📄 covers 💎"
end
if f.ord==128196&&s.ord==128406 
r="📄 disproves 🖖"
end
if f.ord==9986&&s.ord==129422
r="✂ decapitates 🦎"
end
if f.ord==9986&&s.ord==128196
r="✂ cuts 📄"
end
if f.ord==128406&&s.ord==9986
r="🖖 smashes ✂"
end
if f.ord==128406&&s.ord==128142
r="🖖 vaporizes 💎"
end
if f.ord==129422&&s.ord==128406
r="🦎 poisons 🖖"
end
if f.ord==129422&&s.ord==128196 
r="🦎 eats 📄"
end
return r
end
ARGV.each do |g|
f=g[0]
s=g[1]
r=w(f,s)
if r==nil
r=w(s,f)
end
puts(r)
end
