this_file <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(this_file)

library(tidyverse)

dados <- tribble(
  ~PublicationYear, ~Method, ~Internal, ~External, ~Conclusion, ~Construct,
  2022, "Controlled Experiment", 11, 11, 5, 6,
  2022, "Survey", 2, 3, 3, 1,
  2022, "Case Study", 3, 3, 0, 2,
  2022, "Action Research", 0, 0, 0, 0,
  2022, "Ethnography", 0, 0, 0, 0,
  2023, "Controlled Experiment", 16, 18, 4, 10,
  2023, "Survey", 2, 2, 0, 2,
  2023, "Case Study", 2, 2, 0, 2,
  2023, "Action Research", 1, 1, 0, 1,
  2023, "Ethnography", 0, 0, 0, 0,
  2024, "Controlled Experiment", 12, 13, 7, 7,
  2024, "Survey", 5, 6, 3, 5,
  2024, "Case Study", 1, 1, 0, 0,
  2024, "Action Research", 0, 0, 0, 0,
  2024, "Ethnography", 0, 0, 0, 0
)

dados_long <- dados %>%
  pivot_longer(cols = c(Internal, External, Conclusion, Construct),
               names_to = "TTV", values_to = "Frequency") %>%
  filter(Frequency > 0)

p <- ggplot(dados_long, aes(x = as.factor(PublicationYear),
                       y = TTV,
                       size = Frequency,
                       color = Method)) +
  geom_point(position = position_jitter(width = 0.2, height = 0.2), alpha = 0.75) +
  scale_size_continuous(range = c(3, 18)) +
  labs(
    x = "Publication year",
    y = "Type of TTV",
    color = ""
  ) +
  scale_color_manual(values = c(
    "Controlled Experiment" = "#1f77b4",
    "Survey" = "#ff7f0e",
    "Case Study" = "#2ca02c",
    "Action Research" = "#d62728",
    "Ethnography" = "#9467bd"
  )) +
  guides(size = "none") +
  theme_minimal() +
  theme(
    legend.position = "top",
    legend.text = element_text(size = 10),
    plot.margin = margin(t = -8, r = 0, b = 0, l = 4),
    axis.text.y = element_text(size = 11, color = "black"),
    legend.justification = c(0.965, 0),
  )


ggsave("Fig3.png", 
       plot = p, width = 5, height = 3)
getwd()