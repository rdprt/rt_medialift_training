

    include("/sssf/a.jl")
		a=readtable(path *"tran.csv")
		b=readtable("..//brks.csv")
		a[:level1] = a[:provide];
		c=b[:,[:level,:code]]
		rename!(a, :level1, :level)
		c=join(a, c, on=:level, kind=:inner)
    
