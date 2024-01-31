#Unrestricted Graph

graph_unres <- Daily_diff %>%
    ggplot()+
    geom_line(aes(date, diff_dailyreturn)) +
    facet_wrap(~Superindustryname_Pty, scales = "free_y") +
    fmxdat::theme_fmx(title.size = ggpts(30),
                      subtitle.size = ggpts(28),
                      caption.size = ggpts(25),
                      CustomCaption = T) +
    labs(x = "", y = "Daily Returns", caption = "This data is unrestricted",
         title = "South African Sector Returns",
         subtitle = "2013-2023") +
    guides(color = none)

