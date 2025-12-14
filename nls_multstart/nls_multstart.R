# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finds the best fit of non-linear model based on AIC score Use nls.multstart With (In) R Software
install.packages("nls.multstart")
library("nls.multstart")
# Estimation Finds the best fit of non-linear model based on AIC score Use nls.multstart With (In) R Software
nls_multstart = read.csv("https://raw.githubusercontent.com/timbulwidodostp/nls_multstart/main/nls_multstart/nls_multstart.csv",sep = ";")
schoolfield_high <- function(lnc, E, Eh, Th, temp, Tc) {Tc <- 273.15 + Tc
k <- 8.62e-5
boltzmann.term <- lnc + log(exp(E/k*(1/Tc - 1/temp)))
inactivation.term <- log(1/(1 + exp(Eh/k*(1/Th - 1/temp))))
return(boltzmann.term + inactivation.term)}
nls_multstart <- nls_multstart(ln.rate ~ schoolfield_high(lnc, E, Eh, Th, temp = K, Tc = 20), data = nls_multstart, iter = 500,
start_lower = c(lnc=-10, E=0.1, Eh=0.5, Th=285), start_upper = c(lnc=10, E=2, Eh=5, Th=330), lower = c(lnc=-10, E=0, Eh=0, Th=0), supp_errors = 'Y')
nls_multstart
summary(nls_multstart)
# Finds the best fit of non-linear model based on AIC score Use nls.multstart With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished