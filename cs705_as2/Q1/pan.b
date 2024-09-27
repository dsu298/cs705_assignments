	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM liveness2_proc1 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness2_proc0 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness1_proc1 */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness1_proc0 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safety */
;
		
	case 15: // STATE 1
		goto R999;

	case 16: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC user */
;
		;
		
	case 18: // STATE 2
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 3
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 5
		;
		now.in_cs[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 6
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 8
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 9
		;
		now.in_cs[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 10
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;
	}

