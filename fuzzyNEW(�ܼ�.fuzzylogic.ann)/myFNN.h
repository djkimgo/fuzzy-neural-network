// myFNN.h: interface for the myFNN class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYFNN_H__2DAB9603_C9D1_41F5_A444_325853455821__INCLUDED_)
#define AFX_MYFNN_H__2DAB9603_C9D1_41F5_A444_325853455821__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ipl.h"
#include "cv.h"
#include "highgui.h"

#define	LOW		(0.2f)
#define	HI		(0.8f)
#define ALPHA	(5.2933f)
#define BETA1	(7.6585f)
#define BETA2	(7.6585f)

class myFNN  
{
public:
	myFNN();
	virtual ~myFNN();

	float **delta;
	float ***weight;
	int ***connect;
	float **out;
	float *rout;
	float **in;
	int *rules;
	//float *rin;
	//float *rin2;
	int *layer;
	int no_layer;
	int *itlayer;
	int *otlayer;
	float learn_rate;
	int epoch;
	float err_criteria;
	float *errors;
	int load_flag;
	
	// Data for learning and evalutation
	float *tin, *lin, *ein;
	float *tout, *lout, *eout;
	int t_no, l_no, e_no;
	int in_no, out_no;
	
	float *mean[2];
	float *sigma[2];

	void kSOC(float *data, int no_data, float *mean, float *std, int no_cluster);
	void kSOCFNN(float *mean, float *sigma, int io, int index);

	void freeFNN();
	
	void initFNN();
	void showFNN(int layer=-1, int mode = 0);
	void aoutFNN(int layer=-1);
	void evalFNN(float *input, float *output, int flag = 0);
	void compFNN(float *input, float *output, int no_sample);

	void initFNN2();
	void evalFNN2(float *input, float *output, int flag = 0);
	void compFNN2(float *input, float *output, int no_sample);
	void learnFNN2(float *input, float *output, int no_sample);
	
	void learnFNN(float *input, float *output, int no_sample);
	void learnFNNsi(float *input, float *output, int no_sample);
	
	//void si1FNN(int target);	// DJ
	float si1FNN(int target);	// DJ2
	void si2FNN(int target);	// Bhattacharyya dist.
	void si3FNN(int target);	// Separability criteria 1) p.261, Fukunaga, Intro. to Stat. PR
	void si4FNN(int target);	// DJ3

	void saveFNN(char *str);
	void loadFNN(char *str);
	void ruleFNN();
	void loadDataN1(char *str, int cond, int des, int t_len, int l_len, int e_len, int normalize = 1);
	void ioHistogram();
	void setMembership();
	void recTrain();
	void recTest();
	void ruleCombination();
	void deleteLinks();
	void deleteInputNodes(int *nodes, int no_nodes);

	void ShowMF(int inout);
	void ShowError(int time, float error);
	void ShowFNND(int nodes = 1);

	IPLIMAGE imgError;
	float fSMcross(float m1, float m2, float s1, float s2);
	float fSMunion(float m1, float m2, float s1, float s2);
	float fSMAB(float m1, float m2, float s1, float s2);

	CvFont font;

	inline void setFNN(int *layer_st, int layer_no, int *layer_it, int *layer_ot, float lr, float ec, int ep)
	{
		layer = layer_st;
		no_layer = layer_no;
		itlayer = layer_it;
		otlayer = layer_ot;
		learn_rate = lr;
		epoch = ep;
		err_criteria = ec;
	};
};

#endif // !defined(AFX_MYFNN_H__2DAB9603_C9D1_41F5_A444_325853455821__INCLUDED_)
