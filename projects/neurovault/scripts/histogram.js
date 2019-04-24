/*!
 *STOPPED HERE - histograms are over-writing one another.. then add axis, then anatomical regions!
 * Histograms for pybraincompare
 *
 * Copyright 2014 Vanessa Sochat
 * I don't understand enough about licenses to use them
 */
function histogram(data,svg,title,width,height,color) {

  // A formatter for counts.
  var formatCount = d3.format(",.0f");

  var x = d3.scale.linear()
      .domain([d3.min(data), d3.max(data)])
      .range([0, width]);


  // Generate a histogram using twenty uniformly-spaced bins.
  var histogram = d3.layout.histogram()
      .bins(x.ticks(20))
      .value(function(d) { return d; })
      (data)

  var y = d3.scale.linear()
      .domain([0, d3.max(histogram, function(d) { return d.y; })])
      .range([height, 0]);

  var xAxis = d3.svg.axis()
      .scale(x)
      .orient("bottom");

     svg.append("svg:text")
           .attr("class", "title")
           .attr("dy","10em")
           .attr("x", 0)
	   .attr("y", -80)
	   .text(title);


  var bar = svg.selectAll(".bar")
      .data(histogram)
    .enter().append("g")
      .attr("class", "bar")
      .attr("transform", function(d) { return "translate(" + x(d.x) + "," + y(d.y) + ")"; })

  bar.append("rect")
      .attr("x", 2)
      .attr("width", x(histogram[0].x + histogram[0].dx) - (width/150) )
      .attr("height", function(d) { return height - y(d.y); })
      .attr("fill",color)

//- (width/16)
  //bar.append("text")
  //    .attr("dy", ".75em")
  //    .attr("y", -10)
  //    .attr("x", x(histogram[0].x + histogram[0].dx) / 2)
  //    .attr("text-anchor", "middle")
  //    .style("fill","black")
  //    .text(function(d) { return formatCount(d.y); });

  //svg.append("g")
  //    .attr("class", "x axis")
  //    .attr("transform", "translate(0," + height  + ")")
  //    .call(xAxis);
}

function histogram_right(data,svg,title,width,height,color) {

   var x = d3.scale.linear()
    .domain([d3.min(data), d3.max(data)])
    .range([0, 0.25]);

   var y = d3.scale.linear()
      .range([height, 0]);

  barHeight = height/15;

  // Generate a histogram using twenty uniformly-spaced bins.
  var histogram_right = d3.layout.histogram()
      .bins(x.ticks(20))
      .value(function(d) { return d; })
      (data)

    var bar = svg.selectAll("g")
      .data(histogram_right)
    .enter().append("g")
      .attr("transform", function(d, i) { return "translate(" + (width - 100) + "," + ((i * barHeight) + 100 ) + ")"; });

  bar.append("rect")
    .attr("width", function(d) { return x(d.y); })
    .attr("height", function(d,i) { return barHeight - 1})
    .style("stroke","white")        
    .style("fill",color);

  bar.append("text")
      .attr("x", function(d) { return x(d.y); })
      .attr("y", barHeight / 2)
      .attr("dy", ".35em")
      .text("");

}
