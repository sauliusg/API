#! /bin/bash

# Test case: test if a provided Filter langauge EBNF grammar correctly
# recognises filter expressions

#BEGIN DEPEND

INPUT_GRAMMAR=generated/Filter.ebnf

#END DEPEND

./tools/grammatiker/BNF/scripts/grammatica-tree \
    <(./tools/grammatiker/EBNF/scripts/ebnf2grammatica ${INPUT_GRAMMAR}) \
    <(echo -n filter='aax <= +.1e8 OR c21 >= "Sąžininga žąsis" AND NOT ( x != "Some \\ \"string\"" )')
