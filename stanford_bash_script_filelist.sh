# !/bin/bash
java -cp "_nlp/stanford-corenlp-full-2018-10-05/*" -Xmx4g edu.stanford.nlp.pipeline.StanfordCoreNLP -annotators tokenize,ssplit,pos,lemma,ner,parse,coref -coref.algorithm neural -coref.maxMentionDistance 3 -coref.maxMentionDistanceWithStringMatch 3 -fileList hp_filelist.txt -outputFormat json -outputDirectory "./output_hp_neural_3"

