using Plots
gr() #backend
#definir os pontos (pode ser feito de qualquer jeito)
data_tofit = [1.6800483    -1.641695388; 
              0.501309281  -0.977697538; 
              1.528012113   0.52771122;
              1.70012253    1.711524991; 
              1.992493625   1.891000015;
              2.706075824  -0.463427794;
              2.994931927  -0.443566619;
              3.491852811  -1.275179133;
              3.501191722  -0.690499597;
              4.459924502  -5.516130799;
              4.936965851  -6.001703074;
              5.023289852  -8.36416901;
              5.04233698   -7.924477517;
              5.50739285  -10.77482371;
              5.568665171 -10.9171878]
              
#definir x e y para ficar mais fácil

x = data_tofit[:,1]
y = data_tofit[:,2]
println("x-values: ")
println(x)
println("y-values: ")
println(y)   

#vamos plotar!
scatter(x, y, title="Scatter plot of x and y", xlab = "x values", ylab=" y values") #scatter são apenas os pontos
#o fit vai se basear nessa função:
parabfit(x) = a*(x^2)+b*x+c

#e vamos definir os valores:
a = 1
b = 1
c = 1
parabfit(4) #just a test
#16+4+1= 21, so it has too be 21!
#now, I am going to plot
plot(parabfit,-5,5, title = "data_tofit plot", color = "red")
# e vamos comparar
scatter!(x, y, title="Scatter plot of x and y", xlab = "x values", ylab=" y values")
#ajustando os coeficientes...
a = -1 #"sad face graph"
b = 3.5 #it looks like it fit
c = 0.5 #The plot must have a y-intersection that is close to 0, so c is close to 0.

savefig("Fitting values to parabola.pdf") #se ficar bunitinho e quiser salvar
