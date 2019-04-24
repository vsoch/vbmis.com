SQL QUERY EXAMPLES:

Plan for database:
1) Decide on tables and columns for each table - get approval
2) Create tables
3) Write scripts to create a full statement to upload .mat data into database
4) Upload data
5) Create searchable interface with php

TABLE PLANNING - draw out objects, then create diagram with links
paper_id is always a unique identifier

each tables unique identifier might be ok to just call id, 
since we have to select the name of the table to get to it anyway

log (NOT IMPLEMENTED)
    paper_id
    software_id
    scanner_id
    group_id
    measure_id
    roi_id
    fc_id
    fa_id
    md_id
    fda_id
    anova_id

publication   only one per paper - index by paper_id
    id
    paper_id
    journal
    author
    title
    year
    page
    volume
    country
    keyword

software  - only one per paper - index by paper_id
    paper_id
    preprocess
    analysis
    statistics

scanner
    paper_id
    scanner_id
    make
    model
    telsa

group
    paper_id
    group_id  UNIQUE IDENTIFIER
    name
    age  
    med
    n
    male
    female
      
measure
    paper_id  
    measure_id  UNIQUE IDENTIFIER
    name
    version
    cogpo      SHOULD BE IDENTIFIER FROM ONTOLOGY - can we just use ontology and get rid of this level?

measure_result
    paper_id
    measure_id
    group_id
    subscale
    mean
    sd

demographic
    paper_id
    demographic_id
    name
    groups
    stat_t
    stat_z
    p_val
    
roi (method fmri)  
    paper_id
    task
    method
    roi_id  UNIQUE IDENTIFIER
    roi    SHOULD BE NAME FROM ONTOLOGY
    task   SHOULD BE NAME FROM ONTOLOGY
    method
    atlas
    hemisphere
    group_primary
    group_comparison
    group_secondary
    med_primary
    med_secondary
    volume_mm
    volume_vox
    peak_x
    peak_y
    peak_z
    peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
    
fa (method dti)
    paper_id
    task
    method
    fa_id
    dir
    rep
    roi    SHOULD BE NAME FROM ONTOLOGY
    atlas
    hemisphere
    group_primary
    group_comparison
    group_secondary
    med_primary
    med_secondary
    volume_mm
    volume_vox
    peak_x
    peak_y
    peak_z
    peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z

md  (method dti)
    paper_id
    task 
    method
    md_id     UNIQUE IDENTIFIER
    md_result
    dir
    rep
    roi   SHOULD BE NAME FROM ONTOLOGY
    atlas
    group_primary
    L1_comparison
    L2_comparison
    L3_comparison
    group_secondary
    med_primary
    med_secondary
    hemisphere
    volume_mm
    volume_vox
    peak_x
    peak_y
    peak_z
    peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
     
md_result (method dti)
    group_id
    L1_mean
    L1_sd
    L2_mean
    L2_sd
    L3_mean
    L3_sd

rd (method dti)
    paper_id
    task
    method
    rd_id
    dir
    rep
    groups
    tract_name
    tract_type
    tract_hemisphere
    reg_analysis
    reg_statistics
    roi   SHOULD BE NAME FROM ONTOLOGY
    atlas
    hemisphere
    volume_mm
    volume_vox
    peak_x
    peak_y
    peak_z
    peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
    pattern
    connection_gm
    
fc (method fmri)
    paper_id
    task
    method
    group_primary
    group_comparison
    group_secondary
    med_primary
    med_secondary
    fc_id   UNIQUE IDENTIFIER
    seeds   list of seed ids OR number of seeds?
    
seed
    paper_id
    seed_id UNIQUE IDENTIFIER
    seed_roi  SHOULD BE NAME FROM ONTOLOGY
    seed_atlas
    seed_hemisphere
    conn_roi
    conn_atlas
    conn_hemisphere
    direction
    conn_volume_mm
    conn_volume_vox
    conn_peak_x
    conn_peak_y
    conn_peak_z
    conn_peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
    condition  need some way to designate group 1 > group 2
    
FDA
    paper_id
    task
    method
    FDA_id
    FDA_models  list of FDA_model ids
    volume_mm
    volume_vox
    peak_x
    peak_y
    peak_z
    peak_space
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
    condition

FDA_model
    paper_id
    fda_model_id
    name
    type
    training_correct
    reg_analysis
    reg_statistics
    comparison
    
LOO
    paper_id
    fda_model_id
    group_id
    per_correct

anova
    paper_id
    task
    method
    p_comparison
    p_val
    p_corr
    stat_t
    stat_z
    condition
    anova_id