require(["netjs", "lib/d3"], function(netjs, d3) {

  function thresholdMatrix(matrix, args) {

    var thresPerc = args[0];

    var thresMatrix = [];
    var nodeThress  = [];

    for (var i = 0; i < matrix.length; i++) {
      absVals = matrix[i].map(function(val) {return Math.abs(val);});
      nodeThress.push(d3.max(absVals) * thresPerc); 
    }

    for (var i = 0; i < matrix.length; i++) {

      thresMatrix.push([]);

      for (var j = 0; j < matrix[i].length; j++) {

        if (Math.abs(matrix[i][j]) < nodeThress[i] ||
            Math.abs(matrix[i][j]) < nodeThress[j])

          thresMatrix[i].push(Number.NaN);
        else 
          thresMatrix[i].push(matrix[i][j]);
      }
    }

    return thresMatrix;
  }

  // See netdata.js for a description of these input variables
  var args            = {};
  args.matrices       = ["data/dataset1/myconnectome_full.txt"];
  args.matrixLabels   = ["Full Correlation"];
  args.nodeData       = ["data/dataset1/cluster_groups.txt"];
  args.nodeDataLabels = ["Cluster number"];
  args.linkage        =  "data/dataset1/linkages.txt";
  args.thumbnails     =  "data/dataset1/img";
  args.thresFunc      = thresholdMatrix;
  args.thresVals      = [0.95];
  args.thresLabels    = ["Threshold percentage"];
  args.thresholdIdx   = 0;
  args.numClusters    = 1;
  args.metaData       = ["data/dataset1/metadata_final.tsv"];
  
  netjs.loadNetwork(args, function(net) {

    // Here is width and height of network
    var w  = window.innerWidth - 25;
    var h  = window.innerHeight - 25;
    //var sz = Math.min(w/2.0, h);
    
    netjs.displayNetwork(
      net, 
      "#fullNetwork",
      "#subNetwork",
      "#networkCtrl",
      1500,1500,1500,1500);
  });
});

