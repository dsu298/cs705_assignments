	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM liveness2_pid1 */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		
	case 6: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness2_pid0 */
;
		;
		;
		
	case 8: // STATE 3
		goto R999;
;
		;
		
	case 10: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness1_pid1 */
;
		;
		;
		
	case 12: // STATE 3
		goto R999;
;
		;
		
	case 14: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness1_pid0 */
;
		;
		;
		
	case 16: // STATE 3
		goto R999;
;
		;
		
	case 18: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safety */
;
		
	case 19: // STATE 1
		goto R999;

	case 20: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC user */
;
		;
		
	case 22: // STATE 2
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 3
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 6
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 8
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 9
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;
	}

