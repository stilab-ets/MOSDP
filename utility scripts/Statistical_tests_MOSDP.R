library("readxl")
library("effsize")

ind_stat_test <-function(col,data){
  algorithms <- c('ibea', 'MOPSO','MOLR')
  target ="ibea"
  x = unlist(subset(data,algorithm == "nsga3")[col],use.names = FALSE)
  files <- c( 
    'camel-1.0', 'camel-1.2', 'camel-1.4', 
    'lucene-2.0', 'lucene-2.2', 'poi-1.5',
    'poi-2.0', 'poi-2.5', 'xalan-2.4', 
    'xalan-2.5', 'xalan-2.6', 'xerces-1.2', 'eclipse-2.0', 'eclipse-2.1',
    'xerces-1.3'
    )
  
  results <- data.frame(algorithm = character(),project_name = character(),effect_size = double(),p_value=double(),mean = double(),median = double())
  for (project in files){
    cat("processing project",project,"\n")
    for (algo in algorithms)
    {
      cat(target,"\n")
      cat(algo,"\n")
      x = unlist(subset(data,algorithm == target & project_name == project)[col],use.names = FALSE)
      y = unlist(subset(data,(algorithm == algo) & project_name == project)[col],use.names = FALSE)
      print(y)
      print(x)
      p_val = wilcox.test(x,y)
      delta = cliff.delta(x,y)
      new_entry <- list(algorithm=algo,project_name = project, effect_size = delta$estimate, p_value = p_val$p.value,mean= mean(y),median = median(y))
      results <- rbind(results,new_entry)
      print(p_val)
      print(delta)
      
    }
  }
  for (algo in algorithms)
  {
    cat(algo,"\n")
    x = unlist(subset(data,algorithm == target )[col],use.names = FALSE)
    y = unlist(subset(data,(algorithm == algo) )[col],use.names = FALSE)
    p_val = wilcox.test(x,y)
    delta = cliff.delta(x,y)
    new_entry <- list(algorithm=algo,project_name = 'all', effect_size = delta$estimate, p_value = p_val$p.value,mean= mean(y),median = median(y))
    results <- rbind(results,new_entry)
    print(p_val)
    print(delta)
    
  }
  
  return (results)
}
my_data <- read.csv("C:/Users/Motaz/Desktop/work/TSE_R3/all_hv_gd.csv")
results <- ind_stat_test("hv",my_data)
write.csv(results,'C:/Users/Motaz/Desktop/work/TSE_R3/all_hv_stats.csv')