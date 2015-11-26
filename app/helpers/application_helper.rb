module ApplicationHelper

def get_prom(couch)
  total = 0
  cant = 0
  #couch = Couch.find(couch_id)
  if(couch.valorations.count != 0)
  	couch.valorations.each do |v|
  		if (v.valor != nil)
    	total = total + v.valor
    	cant += 1
        end
   	end
   	prom = total / cant
   else 
   	prom = 0
   end

"#{prom}"

end

def get_random_number(max_value = 5)
	rand(max_value)
end

 def draw_stars(n = 2)
  x = 1

  loop do 
  	"#{x.to_s}" 
   	 x +=1
   	 break if x > 10
   end

"#{x.to_s}" 

"#{x.to_s}" 


"Esto es un ejemplo"

end


def show_number()

	x = 9/3

	"#{x}"
 
end 

def get_prom_user(user)
  total = 0
  cant = 0
  if(user.valorations.count != 0)
    user.valorations.each do |v|
      if (v.valor != nil)
      total = total + v.valor
      cant += 1
        end
    end
    prom = total / cant
   else 
    prom = 0
   end
end

end
