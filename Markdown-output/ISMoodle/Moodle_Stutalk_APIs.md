# Moodle Stutalk APIs

The following Stutalk APIs are created to facilitate the Moodle - SITS grade push development. They are still in development, so will be updated.

### Overview

-   [MDL\_MAB\_1 (Get the component grades (CAM\_MAB) from SITS)](#MoodleStutalkAPIs-getcomponentsapi)

-   MDLGRADEPUSH (Update SAS / SRA records on SITS)
-   MDL\_GET\_STD (Get student's SPR\_CODE)
-   MDLSUBLOG (Push assessment's submission date & time to SITS)

### **1. Get the component grades (CAM\_MAB) from SITS. **

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_MAB\_1/MOD\_CODE//AYR\_CODE//PSL\_CODE//MAV\_OCCUR/

For example:

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_MAB\_1/MOD\_CODE/HPSC0143/AYR\_CODE/2023/PSL\_CODE/T2/MAV\_OCCUR/A6U

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_MAB\_1/MOD\_CODE/SOCS0066/AYR\_CODE/2022/PSL\_CODE/T1&&2/MAV\_OCCUR/A6U

\*Note: "&&" is used to replace "/" as "/" is an invalid character in URL.

Example response:

``` java
[
    [
        "MOD_CODE",
        "MAV_OCCUR",
        "AYR_CODE",
        "PSL_CODE",
        "MAP_CODE",
        "MAP_NAME",
        "MAB_SEQ",
        "AST_CODE",
        "MAB_PERC",
        "MAB_TSHA",
        "MAB_NAME",
        "MKS_CODE",
        "APA_ROMC"
    ],
    [
        "HPSC0143",
        "A6U",
        "2023",
        "T2",
        "HPSC0143A6UF",
        "HPSC0143 (A6U) Assessment 2023",
        "001",
        "CN01",
        "50",
        "100",
        "Report (2,000 words)",
        "UNA01",
        ""
    ],
    [
        "HPSC0143",
        "A6U",
        "2023",
        "T2",
        "HPSC0143A6UF",
        "HPSC0143 (A6U) Assessment 2023",
        "002",
        "GN02",
        "20",
        "100",
        "Group presentation (15-20 minutes)",
        "UNA01",
        ""
    ]
]
```

### **[2. Update SAS / SRA records on SITS (cloned from Assessment UCL's Markimport2 API)](#MoodleStutalkAPIs-updateapi)**

**For SAS:**

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDLGRADEPUSH/assessment-component/-/student/---0 

For example:

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDLGRADEPUSH/assessment-component/BIOC0001A4UD-003/student/12345678\_1-2021-T1-0

**For SRA:**

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDLGRADEPUSH/assessment-component/-/student/(replace "/" with "\_")&gt;---

For example:

https://stutalk-dev.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDLGRADEPUSH/assessment-component/CHEM0010A4UC-001/student/12345678\_1-2020-T1-001

**Request body should include a JSON format data:**

For the case below, 5055 will be stored in the field SAS\_ACTM / SRA\_ACTM, a grade will be calculated using the mark conversion table \*MKC.CAMS and stored in field SAS\_ACTG / SRA\_ACTG.

``` java
{
"actual_mark":"50.55",
"actual_grade":""
}
```

For the case below, 0 will be stored in the field SAS\_ACTM / SRA\_ACTM, "IR" will be stored in field SAS\_ACTG / SRA\_ACTG.

``` java
{
"actual_mark":"0",
"actual_grade":"IR"
}
```

\*The MKC.CAMS records can be found by MAP.MKS\_CODE → MKS.MKS\_CODE → MKC.MKS\_CODE.

Mark conversion table example:

``` text
MKS_CODE       MKS_ MKS_NDDM                                  MKC_PROC       MKC_ATTP                                  MKC_RANK                                  MKC_SEQ                                   MKC_MINM                                  MKC_MAXM                                  MKC_GR
============== ==== ========================================= ============== ========================================= ========================================= ========================================= ========================================= ========================================= ======
UNA01          Y    2                                         SAS            1                                         1                                         105                                       4000                                      10000                                     P     
UNA01          Y    2                                         SAS            2                                         1                                         205                                       4000                                      10000                                     P     
UNA01          Y    2                                         SAS            1                                         2                                         110                                       100                                       3999                                      F     
UNA01          Y    2                                         SAS            2                                         2                                         210                                       100                                       3999                                      F     
UNA01          Y    2                                         SAS            1                                         3                                         298                                       1                                         99                                        F     
UNA01          Y    2                                         SAS            2                                         3                                         299                                       1                                         99                                        F     
UNA01          Y    2                                         SAS            1                                         4                                         115                                       0                                         0                                         AB    
UNA01          Y    2                                         SAS            2                                         4                                         215                                       0                                         0                                         AB    
UNA01          Y    2                                         SAS            2                                         5                                         230                                       0                                         0                                         DA    
UNA01          Y    2                                         SAS            1                                         5                                         301                                       0                                         0                                         F     
UNA01          Y    2                                         SAS            2                                         6                                         291                                       0                                         10000                                     EP    
UNA01          Y    2                                         SAS            1                                         6                                         130                                       0                                         0                                         DA    
UNA01          Y    2                                         SAS            1                                         6                                         135                                       0                                         10000                                     WH    
UNA01          Y    2                                         SAS            2                                         7                                         235                                       0                                         10000                                     WH    
UNA01          Y    2                                         SAS            1                                         7                                         290                                       0                                         10000                                     EP    
UNA01          Y    2                                         SAS            2                                         8                                         302                                       0                                         0                                         F     
UNA01          Y    2                                         SAS            1                                         9                                         140                                       0                                         0                                         ZZ    
UNA01          Y    2                                         SAS            2                                         10                                        240                                       0                                         0                                         ZZ    
UNA01          Y    2                                         SAS            1                                         10                                        150                                       0                                         10000                                     IR    
UNA01          Y    2                                         SAS            1                                         11                                        294                                       0                                         0                                         NX    
UNA01          Y    2                                         SAS            2                                         11                                        250                                       0                                         10000                                     IR    
UNA01          Y    2                                         SAS            2                                         12                                        295                                       0                                         0                                         NX    
UNA01          Y    2                                         SAS            2                                         12                                        313                                       0                                         0                                         CX    
UNA01          Y    2                                         SAS            1                                         12                                        315                                       0                                         0                                         Q     
UNA01          Y    2                                         SAS            1                                         12                                        312                                       0                                         0                                         CX    
```

### **3. Get student's SPR\_CODE for a given student ID, assessment map code and mab sequence. **

https://stutalk-dev-cloud.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_STD/STU\_CODE//MAP\_CODE//MAB\_SEQ/

For example:

https://stutalk-dev-cloud.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_STD/STU\_CODE/20159707/MAP\_CODE/BIOC0001A4UD/MAB\_SEQ/003

``` java
[
    [
        "STU_CODE",
        "SPR_CODE",
        "STU_TITL",
        "STU_FNM1",
        "STU_SURN",
        "UPN",
        "SCE_STAC",
        "SPR_EDATE",
        "MAP_CODE",
        "MAB_SEQ"
    ],
    [
        "20159707",
        "20159707/2",
        "DR",
        "KAMIRAT",
        "MENDES",
        "",
        "E",
        "07-JUN-24",
        "BIOC0001A4UD",
        "003"
    ]
]
```

**Some observation during testing:**

-   The inputted marks and grades are validated by the related mark conversion table records.
-   Grade is calculated according to the mark conversion table when only actual\_mark is in the request body.
-   The same request can be sent as many time as you want, the response will indicate the request is successfully unless the marks or grades is different from the existing records on SITS.
-   The SAS / SRA records' updated date won't be updated even the same request is sent more than one time.

