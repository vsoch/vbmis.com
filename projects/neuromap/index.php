<?php 
require_once(dirname(__FILE__) . '/conf/config.php');

// Include header styling
include('inc/class/header.php');

$dal = new DAL();

$results = $dal->get_mapping();
echo "<h1>Neurosynth to Autism Mapping</h1>";

if ($results){
	echo '<table>';
	echo '<tbody>';
	echo '<tr>';
	echo '<th>Neurosynth Terms</th>';
	echo '<th>Autism Ontology Term</th>';
	echo '<th>Autism Ontology Description</th>';
	echo '</tr>';

  	foreach ($results as $result){
  		echo "<tr><td> $result->neurosynth_term </td>";
		echo "<td> $result->autism_ontology_term  </td>"; 
		echo "<td> $result->autism_ontology_definition  </td>"; 
		echo "</tr>";
	}
	echo "</tbody>";
	echo '</table>';
  }
  else{
	echo "<p>Cannot find mapping</p>";
  }
  
// Add footer, etc.
include('inc/class/footer.php');

?>
