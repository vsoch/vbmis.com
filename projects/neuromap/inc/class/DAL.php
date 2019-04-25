<?php 

// Data Access Layer Query Result
class DALQueryResult {
  private $_results = array();
  public function __construct(){}
  
  public function __set($var,$val){
    $this->_results[$var] = $val;
  }

  public function __get($var){	
    if (isset($this->_results[$var])){
	  return $this->_results[$var];
	}
    else{
	  return null;
	}
  }
}

// Data Access Layer
class DAL {
  public function __construct(){}
  
  // QUERY FUNCTIONS ****************************
  // return all spatial features 
  public function get_mapping(){
    $sql = "SELECT * FROM neurosynth_to_autism";
    return $this->query($sql);
  }
  
  
  // CONNECTION FUNCTIONS ***********************  
  // Connect to database
  private function dbconnect() {
    $conn = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD)
    	or die ("<br/>Could not connect to MySQL server");
		
    mysql_select_db(DB_DB,$conn)
    	or die ("<br/>Could not select the indicated database");
	
	return $conn;
  }
  
  // Run query
  private function query($sql){

    $this->dbconnect();

    $res = mysql_query($sql);

    if ($res){
      if (strpos($sql,'SELECT') === false){
        return true;
      }
    }
    else{
      if (strpos($sql,'SELECT') === false){
        return false;
      }
	  else{
	    return null;
	  }
    }

    $results = array();

    while ($row = mysql_fetch_array($res)){

      $result = new DALQueryResult();

      foreach ($row as $k=>$v){
        $result->$k = $v;
      }

      $results[] = $result;
    }
    return $results;		
  }  
}

?>
