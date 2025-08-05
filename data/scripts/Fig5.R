this_file <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(this_file)

library(ggplot2)
library(dplyr)
library(tidyr)

df <- tribble(
  ~TTV, ~Method, ~Close, ~Differentiated, ~External, ~Conceptual, ~Internal,
  "Internal", "Controlled Experiment", 11, 9, 9, 8, 2,
  "Internal", "Survey", 4, 0, 3, 2, 0,
  "Internal", "Case Study", 2, 3, 1, 0, 0,
  "Internal", "Action Research", 1, 0, 0, 0, 0,
  "Internal", "Ethnography", 0, 0, 0, 0, 0,
  "Internal", "Others", 1, 2, 4, 2, 0,
  
  "External", "Controlled Experiment", 12, 9, 10, 9, 2,
  "External", "Survey", 4, 1, 4, 2, 0,
  "External", "Case Study", 2, 3, 1, 0, 0,
  "External", "Action Research", 1, 0, 0, 0, 0,
  "External", "Ethnography", 0, 0, 0, 0, 0,
  "External", "Others", 2, 2, 4, 2, 0,
  
  "Conclusion", "Controlled Experiment", 7, 3, 5, 1, 0,
  "Conclusion", "Survey", 3, 1, 2, 0, 0,
  "Conclusion", "Case Study", 0, 0, 0, 0, 0,
  "Conclusion", "Action Research", 0, 0, 0, 0, 0,
  "Conclusion", "Ethnography", 0, 0, 0, 0, 0,
  "Conclusion", "Others", 1, 0, 0, 2, 0,
  
  "Construct", "Controlled Experiment", 8, 6, 4, 3, 2,
  "Construct", "Survey", 2, 0, 4, 2, 0,
  "Construct", "Case Study", 2, 2, 0, 0, 0,
  "Construct", "Action Research", 1, 0, 0, 0, 0,
  "Construct", "Ethnography", 0, 0, 0, 0, 0,
  "Construct", "Others", 1, 1, 2, 2, 0
)

df_long <- df %>%
  pivot_longer(
    cols = Close:Internal,
    names_to = "ReplicationType",
    values_to = "Count"
  )

df_long$Method <- factor(df_long$Method, levels = c(
  "Others", "Ethnography", "Action Research", "Case Study", "Survey", "Controlled Experiment"
))

df_long$TTV <- factor(df_long$TTV, levels = c("Internal", "External", "Conclusion", "Construct"))

p <- ggplot(df_long, aes(x = ReplicationType, y = Method, fill = Count)) +
  geom_tile(color = "white") +
  geom_text(aes(label = Count), size = 2.5) +
  facet_wrap(~TTV) +
  scale_fill_gradient(
    low = "white", high = "blue",
    guide = guide_colorbar(barheight = 0.4)  # ajusta a altura da barra
  )+
  theme_minimal() +
  theme(
    legend.position = "top",
    legend.spacing.y = unit(0.1, "cm"),
    legend.margin = margin(b = -18),
    plot.margin = margin(t = 1, r = 4, b = 5, l = 1),
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1, size = 8),
    axis.text.y = element_text(size = 8.5, color = "black"),
    legend.text = element_text(size = 7),
    legend.title = element_text(size = 8),
    legend.justification = c(-1.5, 0)
  ) +
  labs(
    x = "Replication Type", y = "Method"
  )

ggsave("Fig5.png", plot = p, width = 4, height = 3.5)
ggsave("Fig5.pdf", plot = p, width = 4, height = 3.5)
getwd()