BEGIN{
	sendLine = 0;
	recvLine = 0;
	forwardLine =0;
	if(mseq == 0) mseq = 10000;
	for(i=0;i<mseq;i++){
		rseq[i]= -1;
		sseq[i]= -1;
	}
}

$0 ~/s.*AGT/{
		if(sseq[$6] == -1){
			sendLine++;
			sseq[$6] = $6;
		}
}

$0 ~/r.*AGT/{
		if(rseq[$6] == -1){
			recvLine++;
			rseq[$6] = $6;
		}
}

$0 ~/f.*RTR/{
		forwardLine++;
}

END{
		printf "cbr s:%d  r:%d, r/s Ratio:%.4f, f:%d  \n", sendLine, recvLine,(recvLine/sendLine),forwardLine;
}
