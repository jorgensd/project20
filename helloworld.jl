import Pkg; Pkg.add("Plots")
using Plots
ENV["GKSwstype"]="nul"

function f(x)
    return sin.(x).+ 2.
end


x = range(0,stop=2*pi,length=10)
plot(x, f(x), fmt= :png)
if !ispath("plots")
    mkdir("plots")
end

savefig("plots/f.png")
