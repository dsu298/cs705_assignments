	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM liveness2_p1 */
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

		 /* CLAIM liveness1_p1 */
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

		 /* CLAIM safety */
;
		
	case 9: // STATE 1
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC user */

	case 11: // STATE 1
		;
		((P0 *)_this)->k = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: // STATE 3
		;
		now.pos[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 4
		;
		now.step[ Index(((P0 *)_this)->k, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 5
		;
		((P0 *)_this)->j = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 7
		;
		((P0 *)_this)->j = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 20: // STATE 21
		;
		((P0 *)_this)->j = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 29
		;
		((P0 *)_this)->k = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 35
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 37
		;
		now.ncrit = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 38
		;
		now.pos[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;
	}

