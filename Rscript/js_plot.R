js_plot <- function(){pander::pander(glue::glue('{plotlyjs}{chartjs}{gchartjs}{brainjs}{neuraljs}'))}


plotlyjs <- '<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>'
chartjs <- '<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>'
gchartjs <- '<script src="https://www.gstatic.com/charts/loader.js"></script>'
brainjs <- '<script src="//unpkg.com/brain.js"></script>'
neuraljs <- '<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.0.0/p5.min.js"></script><script src="https://unpkg.com/ml5@latest/dist/ml5.min.js"></script>'