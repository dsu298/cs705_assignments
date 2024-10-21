#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM liveness2_p1 */
	case 3: // STATE 1 - _spin_nvr.tmp:23 - [((!(!((pos[0]==0)))&&!((ncrit==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !( !((((int)now.pos[0])==0)))&& !((((int)now.ncrit)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:28 - [(!((ncrit==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!( !((((int)now.ncrit)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:30 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM liveness1_p1 */
	case 6: // STATE 1 - _spin_nvr.tmp:12 - [((!(!((pos[0]>0)))&&!((ncrit==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !( !((((int)now.pos[0])>0)))&& !((((int)now.ncrit)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:17 - [(!((ncrit==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((((int)now.ncrit)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safety */
	case 9: // STATE 1 - _spin_nvr.tmp:3 - [(!((ncrit<=1)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!( !((((int)now.ncrit)<=1))))
			continue;
		/* merge: assert(!(!((ncrit<=1))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !( !((((int)now.ncrit)<=1))), " !( !((ncrit<=1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC user */
	case 11: // STATE 1 - peterson4-1.pml:9 - [k = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->k);
		((P0 *)_this)->k = 0;
#ifdef VAR_RANGES
		logval("user:k", ((int)((P0 *)_this)->k));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - peterson4-1.pml:12 - [((k<(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)_this)->k)<(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - peterson4-1.pml:13 - [pos[_pid] = k] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.pos[ Index(((int)((P0 *)_this)->_pid), 3) ]);
		now.pos[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->k);
#ifdef VAR_RANGES
		logval("pos[_pid]", ((int)now.pos[ Index(((int)((P0 *)_this)->_pid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - peterson4-1.pml:14 - [step[k] = _pid] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.step[ Index(((int)((P0 *)_this)->k), 3) ]);
		now.step[ Index(((P0 *)_this)->k, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("step[user:k]", ((int)now.step[ Index(((int)((P0 *)_this)->k), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - peterson4-1.pml:16 - [j = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->j);
		((P0 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("user:j", ((int)((P0 *)_this)->j));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 6 - peterson4-1.pml:18 - [((j==_pid))] (26:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((int)((P0 *)_this)->j)==((int)((P0 *)_this)->_pid))))
			continue;
		/* merge: j = (j+1)(0, 7, 26) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->j);
		((P0 *)_this)->j = (((int)((P0 *)_this)->j)+1);
#ifdef VAR_RANGES
		logval("user:j", ((int)((P0 *)_this)->j));
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[0][27] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 9 - peterson4-1.pml:21 - [((j<3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)_this)->j)<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 10 - peterson4-1.pml:23 - [((pos[j]<k))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.pos[ Index(((int)((P0 *)_this)->j), 3) ])<((int)((P0 *)_this)->k))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 13 - peterson4-1.pml:26 - [((step[k]!=_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.step[ Index(((int)((P0 *)_this)->k), 3) ])!=((int)((P0 *)_this)->_pid))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 21 - peterson4-1.pml:30 - [j = (j+1)] (0:26:1 - 5)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->j);
		((P0 *)_this)->j = (((int)((P0 *)_this)->j)+1);
#ifdef VAR_RANGES
		logval("user:j", ((int)((P0 *)_this)->j));
#endif
		;
		/* merge: .(goto)(0, 25, 26) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[0][27] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 29 - peterson4-1.pml:34 - [k = (k+1)] (0:32:1 - 3)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->k);
		((P0 *)_this)->k = (((int)((P0 *)_this)->k)+1);
#ifdef VAR_RANGES
		logval("user:k", ((int)((P0 *)_this)->k));
#endif
		;
		/* merge: .(goto)(0, 33, 32) */
		reached[0][33] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 35 - peterson4-1.pml:39 - [ncrit = (ncrit+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((int)now.ncrit);
		now.ncrit = (((int)now.ncrit)+1);
#ifdef VAR_RANGES
		logval("ncrit", ((int)now.ncrit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 36 - peterson4-1.pml:40 - [assert((ncrit==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		spin_assert((((int)now.ncrit)==1), "(ncrit==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 37 - peterson4-1.pml:42 - [ncrit = (ncrit-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)now.ncrit);
		now.ncrit = (((int)now.ncrit)-1);
#ifdef VAR_RANGES
		logval("ncrit", ((int)now.ncrit));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 38 - peterson4-1.pml:44 - [pos[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((int)now.pos[ Index(((int)((P0 *)_this)->_pid), 3) ]);
		now.pos[ Index(((P0 *)_this)->_pid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("pos[_pid]", ((int)now.pos[ Index(((int)((P0 *)_this)->_pid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

