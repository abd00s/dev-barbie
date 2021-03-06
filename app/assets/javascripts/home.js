$(function()  {
  $('#chart').highcharts({
    chart: {
      type: "column"
    },
    title: {
      text: "Clicks by Day"
    },
    xAxis: {
      categories: [
          $('#chart').data('daym6'),
          $('#chart').data('daym5'),
          $('#chart').data('daym4'),
          $('#chart').data('daym3'),
          $('#chart').data('daym2'),
          $('#chart').data('daym1'),
          'Today'
      ],
      crosshair: true
    },
    yAxis: {
      min: 0,
      title: {
          text: 'Clicks'
      }
    },
    series: [{
        name: 'Clicks',
        colorByPoint: true,
        data: [{
            name: $('#chart').data('daym6'),
            y: $('#chart').data('countm6'),
        }, {
            name: $('#chart').data('daym5'),
            y: $('#chart').data('countm5'),
        }, {
            name: $('#chart').data('daym4'),
            y: $('#chart').data('countm4'),
        }, {
            name: $('#chart').data('daym3'),
            y: $('#chart').data('countm3'),
        }, {
            name: $('#chart').data('daym2'),
            y: $('#chart').data('countm2'),
        }, {
            name: $('#chart').data('daym1'),
            y: $('#chart').data('countm1'),
        }, {
            name: 'Today',
            y: $('#chart').data('today'),
        }]
    }]

  });
});