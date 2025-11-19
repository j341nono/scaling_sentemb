#!/bin/bash

cd SentEval/data/downstream/
bash download_dataset.sh
cd -
cd ./data
bash download_nli.sh
cd -
