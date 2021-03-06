/*********************************
 * tercpp: an open-source Translation Edit Rate (TER) scorer tool for Machine Translation.
 *
 * Copyright 2010-2013, Christophe Servan, LIUM, University of Le Mans, France
 * Copyright 2015, Christophe Servan, GETALP-LIG, University of Grenoble, France
 * Contact: christophe.servan@gmail.com
 *
 * The tercpp tool and library are free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by 
 * the Free Software Foundation, either version 2.1 of the licence, or
 * (at your option) any later version.
 *
 * This program and library are distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
 * for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library; if not, write to the Free Software Foundation,
 * Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 * **********************************/
#ifndef __TERCPPTERALIGNMENT_H__
#define __TERCPPTERALIGNMENT_H__


#include <vector>
#include <stdio.h>
#include <string.h>
#include "tools.h"
#include "terShift.h"


using namespace std;
// using namespace HashMapSpace;
namespace TERCpp
{

    class terAlignment
    {
        private:
        public:

            vector<string> ref;
            vector<string> hyp;
            vector<string> aftershift;
            vector<terShift> allshifts;
	    vector<int> hyp_int;
	    vector<int> aftershift_int;
	    vector<int> hyp_index;

            float numEdits;
            float deepNumEdits;
            float numWords;
	    float averageWords;
            vector<char> alignment;
            string bestRef;

            int numIns;
            int numDel;
            int numSub;
            int numSft;
            int numWsf;


            terAlignment();
            string toString();
	    void scoreDetails(); 


            string join ( string delim, vector<string> arr );
            float score();
            float scoreAv();
            float deepScoreAv();
	    string printAlignments();
	    string printAllShifts();
	    string printAllShiftsTrack();
	    vector<terShift> updateShifts();
	    void set(terAlignment& l_terAlignment);
	    void set(terAlignment* l_terAlignment);
	    void initializeIndex();
    };

}
#endif