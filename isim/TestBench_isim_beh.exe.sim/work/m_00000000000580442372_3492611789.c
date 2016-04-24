/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/easy_kevin_lab2/ALU_Ctrl.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {10U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {32U, 0U};
static unsigned int ng7[] = {34U, 0U};
static unsigned int ng8[] = {36U, 0U};
static unsigned int ng9[] = {37U, 0U};
static unsigned int ng10[] = {42U, 0U};
static unsigned int ng11[] = {7U, 0U};
static unsigned int ng12[] = {3U, 0U};
static unsigned int ng13[] = {8U, 0U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {15U, 15U};
static unsigned int ng16[] = {4U, 0U};
static unsigned int ng17[] = {5U, 0U};



static void Always_43_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(45, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB25;

LAB9:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB11:    xsi_set_current_line(47, ng0);

LAB26:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);

LAB27:    t3 = ((char*)((ng6)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 6, t3, 6);
    if (t9 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t6 == 1)
        goto LAB40;

LAB41:
LAB43:
LAB42:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB44:    goto LAB25;

LAB13:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng5)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB25;

LAB15:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng11)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB25;

LAB17:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng12)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB25;

LAB19:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng3)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB25;

LAB21:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng1)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB25;

LAB28:    xsi_set_current_line(49, ng0);
    t7 = ((char*)((ng5)));
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB44;

LAB30:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng4)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

LAB32:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng1)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

LAB34:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng3)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

LAB36:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng11)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

LAB38:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng13)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

LAB40:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng14)));
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 4);
    goto LAB44;

}


extern void work_m_00000000000580442372_3492611789_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00000000000580442372_3492611789", "isim/TestBench_isim_beh.exe.sim/work/m_00000000000580442372_3492611789.didat");
	xsi_register_executes(pe);
}
