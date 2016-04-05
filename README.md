#tercpp-embeddings

tercpp-embeddings: an open-source Translation Edit Rate (TER) scorer tool for Machine Translation and Word Error Rate (WER) tool for Automatic Speech Recognition using Word Embeddings.

## Subdirectories:

		src/			source code of library needed
		test/			source code for main source.


## Installation
		
See INSTALL for build instructions.
You have to install firstly the multivec library : https://github.com/eske/multivec/

## Acknowledgement 

This toolkit was partially supported under the G program of the Defense Advanced
Research Projects Agency, Contract No. HR0011-06-C-0022, and by the European
Commission under the project EMP.<br />
Copyright 2010-2013, Christophe Servan, LIUM, University of Le Mans, France <br />

This toolkit is part of the project KEHATH (https://kehath.imag.fr/) funded by the French National Research Agency.<br />
Copyright 2015-2016, Christophe Servan, GETALP-LIG, University of Grenoble, France

Contact: christophe.servan@gmail.com

## Citation
To reference tercpp in your publications, please cite this article:

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
Matthew Snover, Bonnie Dorr, Richard Schwartz, Linnea Micciulla and John Makhoul, "A Study of Translation Edit Rate with Targeted Human Annotation," Proceedings of Association for Machine Translation in the Americas, 2006. 
Matthew Snover, Bonnie J. Dorr, Richard Schwartz, John Makhoul, Linnea Micciulla and Ralph Weischedel, "A Study of Translation Error Rate with Targeted Human Annotation," LAMP-TR-126, CS-TR-4755, UMIACS-TR-2005-58, University of Maryland, College Park, MD July, 2005.
 
