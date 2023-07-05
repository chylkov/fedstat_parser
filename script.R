#install.packages("fedstatAPIr")


ind <- "42928"


library(openxlsx)
library(fedstatAPIr)
data <- fedstat_data_load_with_filters(
  indicator_id = ind,
  #filters = list(
  #  "Классификатор объектов административно-территориального деления (ОКАТО)" = "Российская Федерация",
  #  "Виды показателя" = c(
  #    "К соответствующему периоду предыдущего года",
  #    "К предыдущему месяцу"
  #  ),
  #  "Период" = "Январь",
  #  "Год" = "2023",
  #  "Виды товаров и услуг" = "*"
  #)
  filters = list(
    "Классификатор объектов административно-территориального деления (ОКАТО)" = "*",
    "Год" = "*"
  )
)
file_name = paste("data/", ind, ".xlsx", sep = "")
# for writing a data.frame or list of data.frames to an xlsx file
write.xlsx(data, file_name)


