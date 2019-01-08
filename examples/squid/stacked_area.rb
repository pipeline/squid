# By default, <code>chart</code> plots a column for each series.
#
# You can use the <code>:type</code> option to plot a stacked area chart instead.
filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::ManualBuilder::Example.generate(filename) do
  data = {views: {2013 => 182, 2014 => 24, 2015 => 88},
          uniques: {2013 => 104, 2014 => 27, 2015 => 14},
          totals: {2013 => 104, 2014 => 100, 2015 => 14}}
  chart data, type: :stacked_area, labels: [true, true, true]
end
