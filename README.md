#tercpp-embeddings

tercpp-embeddings: an open-source Translation Edit Rate (TER) scorer tool for Machine Translation and Word Error Rate (WER) tool for Automatic Speech Recognition using Word Embeddings (WER-E and WER-S). 

## Subdirectories:

		papers/			research papers 
		src/			source code of library needed
		test/			source code for main source.


## Installation
		
See INSTALL for build instructions.
You have to install firstly the multivec library : https://github.com/eske/multivec/

## Example

### WER-E:
with multivec binary models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -emb binary_embeddings_model.fr

with multivec text models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -embtxt text_embeddings_model.fr

with word2vec binary models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -w2v binary_embeddings_model.fr

### WER-S:
with multivec binary models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -emb binary_embeddings_model.fr --deeper
		
with multivec text models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -embtxt text_embeddings_model.fr --deeper
		
with word2vec binary models:

		tercpp-embeddings --WER  --noTxtIds -r reference.txt -h hypothesis.txt -w2v binary_embeddings_model.fr --deeper

### Text models
Text models are like word2vec text models:

		83388 50		
		saluting -1.35397 0.586016 2.79672 -0.418376 -0.602821 1.21831 -1.93253 -1.04009 -0.370907 0.604416 0.336976 0.641255 0.334868 0.190173 0.0872742 0.883609 0.211205 0.80019 0.48248 0.824242 -0.346953 -1.07881 -0.521974 -0.111079 0.516307 1.86109 0.737816 0.225595 -0.282824 0.387372 0.523839 0.81536 1.03448 0.662487 0.315265 -2.33873 -0.0998709 -0.809018 -0.157693 -0.348118 0.733476 -0.694376 -0.411821 0.923461 -0.36941 0.576924 -0.00253894 -0.211869 0.738205 0.261968 
		liga 0.240736 0.374699 -0.456721 0.0247067 -0.500141 -0.0672075 -1.15694 -1.043 0.321601 -0.072098 0.402517 0.124218 0.706794 -0.565653 -0.0125166 0.0923419 0.738372 -1.34922 0.00461746 0.480944 -0.157564 -0.685169 -0.379456 0.114373 -0.497862 0.201393 0.804827 -0.173226 -0.403769 -0.529033 0.764493 0.0586693 0.373357 0.780176 0.0847483 0.608413 0.695131 -2.18405 -0.337933 0.0852144 -0.315775 0.484913 -0.0181489 0.439723 0.878166 -0.447149 -0.926107 0.124669 0.258716 1.17472 
		congressmen -2.69759 1.41468 1.14476 -2.2755 -0.324732 1.39088 -2.3428 3.7577 -1.63871 3.99818 1.87524 -2.47587 -0.0758982 -2.32292 -2.73987 1.70998 -1.05869 0.4186 -1.83306 -1.39962 -0.229668 -1.3621 0.61785 -0.712404 -0.570894 0.367588 -1.02264 1.85515 -0.0886673 -0.721675 -0.631928 -0.198751 -4.25625 0.131479 -0.33592 -0.565107 -0.926477 -3.46209 -4.15838 0.272748 0.925235 0.186114 1.2844 -1.43701 0.570687 -1.71726 0.88729 -1.34935 0.680968 2.594 
		outgrown 0.710253 -0.233596 -0.0494852 0.857347 0.25338 0.227812 -0.250028 -0.45428 0.290734 0.12975 0.251975 -0.0849167 0.530985 -0.340551 0.266533 0.584058 -0.0273177 0.77235 -0.285059 -0.306495 -0.592585 -0.212158 -0.211939 -0.723026 -0.010724 -0.165841 -0.140728 0.0779976 -0.860507 1.28739 0.560873 0.149085 0.0701273 0.00534706 -0.141197 0.703732 -0.58476 -0.352017 0.558202 0.0132576 0.067365 -0.00563633 0.0699992 -0.573648 -0.0673231 0.551693 0.294159 -0.0474721 -0.00882039 0.611732 
		causally 0.728588 0.113795 -0.654911 -0.125335 -0.307491 -0.518799 0.521385 -0.00640315 0.153376 -0.320903 0.0846396 0.289929 0.344029 -0.697442 -0.361158 -0.354603 0.536638 -0.318213 0.259182 0.123059 -1.07387 -0.193267 0.204612 -0.227474 -0.40505 -0.61406 -0.399437 -0.186055 -0.508952 0.119864 -0.44636 -0.853974 -0.122938 0.160827 -0.022631 0.291231 -0.608337 -0.157452 -0.196376 0.628901 0.0446108 -0.225483 -0.0513283 -0.00311536 0.598802 0.152529 0.0245117 0.483343 -0.0328817 -0.023467 
		flesch -1.52651 0.00303828 2.04088 -1.77761 0.911405 0.696672 -0.0195003 -1.37895 1.61164 -1.85726 0.466313 3.26666 1.01065 -2.95666 -0.957727 -0.649299 0.289477 -4.81147 -1.02689 1.77689 -2.67837 -3.17847 -0.932097 -0.839573 0.0256079 1.04358 2.61236 1.12533 -0.851274 -0.190656 0.838955 0.396768 1.58905 2.45082 2.24205 0.343338 0.152801 -1.40638 1.62371 -1.43038 -0.583923 -2.22495 0.455508 0.00134699 1.02266 -1.09808 1.04223 -3.45179 0.0491755 -2.18821 
		...
		
## Data

All the data used for our experiments in our paper accepted to INTERSPEECH 2016 are available here: https://github.com/besacier/WCE-SLT-LIG/tree/master/IS2016


## Acknowledgement 

This toolkit is part of the project KEHATH (https://kehath.imag.fr/) funded by the French National Research Agency.<br />
Copyright 2015-2016, Christophe Servan, GETALP-LIG, University of Grenoble, France

This toolkit was partially supported under the GALEprogram of the Defense Advanced
Research Projects Agency, Contract No. HR0011-06-C-0022, and by the European
Commission under the project EuroMatrixPlus <BR />
Copyright 2010-2013, Christophe Servan, LIUM, University of Le Mans, France <br />

Contact: christophe.servan@gmail.com

## Citation
To reference tercpp in your publications, please cite these article:

@InProceedings{LeIS2016,
author = {Ngoc-Tien Le and Christophe Servan and Benjamin Lecouteux and Laurent Besacier},
title = {Better Evaluation of ASR in Speech Translation Context Using Word Embeddings},
booktitle = {INTERSPEECH 2016},
year = 2016
}

@article{servanPBML2011,
  title={Optimising multiple metrics with mert},
  author={Servan, Christophe and Schwenk, Holger},
  journal={The Prague Bulletin of Mathematical Linguistics},
  volume={96},
  number={1},
  pages={109--117},
  year={2011},
  publisher={Versita}
}

The TER code is based on the Snover's algorithm provided at http://www.cs.umd.edu/~snover/tercom

References : 
 + Matthew Snover, Bonnie Dorr, Richard Schwartz, Linnea Micciulla and John Makhoul, "A Study of Translation Edit Rate with Targeted Human Annotation," Proceedings of Association for Machine Translation in the Americas, 2006. 
 + Matthew Snover, Bonnie J. Dorr, Richard Schwartz, John Makhoul, Linnea Micciulla and Ralph Weischedel, "A Study of Translation Error Rate with Targeted Human Annotation," LAMP-TR-126, CS-TR-4755, UMIACS-TR-2005-58, University of Maryland, College Park, MD July, 2005.
 
