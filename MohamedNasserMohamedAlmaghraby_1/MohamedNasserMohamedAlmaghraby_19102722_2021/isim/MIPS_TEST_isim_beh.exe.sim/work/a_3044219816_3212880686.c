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
static const char *ng0 = "C:/Users/AAST/Downloads/DE/MohamedNasserMohamedAlmaghraby_19102722_2021/ALU_CONTROL.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4812);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4818);
    t4 = 1;
    if (2U == 2U)
        goto LAB14;

LAB15:    t4 = 0;

LAB16:    if (t4 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4824);
    t15 = 1;
    if (2U == 2U)
        goto LAB26;

LAB27:    t15 = 0;

LAB28:    if (t15 == 1)
        goto LAB23;

LAB24:    t4 = (unsigned char)0;

LAB25:    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB41;

LAB42:    t4 = (unsigned char)0;

LAB43:    if (t4 != 0)
        goto LAB38;

LAB40:
LAB39:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4842);
    t15 = 1;
    if (2U == 2U)
        goto LAB56;

LAB57:    t15 = 0;

LAB58:    if (t15 == 1)
        goto LAB53;

LAB54:    t4 = (unsigned char)0;

LAB55:    if (t4 != 0)
        goto LAB50;

LAB52:
LAB51:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4852);
    t15 = 1;
    if (2U == 2U)
        goto LAB74;

LAB75:    t15 = 0;

LAB76:    if (t15 == 1)
        goto LAB71;

LAB72:    t4 = (unsigned char)0;

LAB73:    if (t4 != 0)
        goto LAB68;

LAB70:
LAB69:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB89;

LAB90:    t4 = (unsigned char)0;

LAB91:    if (t4 != 0)
        goto LAB86;

LAB88:
LAB87:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 4814);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(45, ng0);
    t8 = (t0 + 4820);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB12;

LAB14:    t5 = 0;

LAB17:    if (t5 < 2U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t5 = (t5 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(47, ng0);
    t14 = (t0 + 4830);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB21;

LAB23:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4826);
    t19 = 1;
    if (4U == 4U)
        goto LAB32;

LAB33:    t19 = 0;

LAB34:    t4 = t19;
    goto LAB25;

LAB26:    t5 = 0;

LAB29:    if (t5 < 2U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB27;

LAB31:    t5 = (t5 + 1);
    goto LAB29;

LAB32:    t20 = 0;

LAB35:    if (t20 < 4U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB33;

LAB37:    t20 = (t20 + 1);
    goto LAB35;

LAB38:    xsi_set_current_line(49, ng0);
    t11 = (t0 + 4838);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB39;

LAB41:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4834);
    t29 = 1;
    if (4U == 4U)
        goto LAB44;

LAB45:    t29 = 0;

LAB46:    t4 = t29;
    goto LAB43;

LAB44:    t30 = 0;

LAB47:    if (t30 < 4U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB45;

LAB49:    t30 = (t30 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(51, ng0);
    t14 = (t0 + 4848);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB51;

LAB53:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4844);
    t19 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t19 = 0;

LAB64:    t4 = t19;
    goto LAB55;

LAB56:    t5 = 0;

LAB59:    if (t5 < 2U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB57;

LAB61:    t5 = (t5 + 1);
    goto LAB59;

LAB62:    t20 = 0;

LAB65:    if (t20 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB63;

LAB67:    t20 = (t20 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(53, ng0);
    t14 = (t0 + 4858);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB69;

LAB71:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4854);
    t19 = 1;
    if (4U == 4U)
        goto LAB80;

LAB81:    t19 = 0;

LAB82:    t4 = t19;
    goto LAB73;

LAB74:    t5 = 0;

LAB77:    if (t5 < 2U)
        goto LAB78;
    else
        goto LAB76;

LAB78:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB75;

LAB79:    t5 = (t5 + 1);
    goto LAB77;

LAB80:    t20 = 0;

LAB83:    if (t20 < 4U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB81;

LAB85:    t20 = (t20 + 1);
    goto LAB83;

LAB86:    xsi_set_current_line(55, ng0);
    t11 = (t0 + 4866);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB87;

LAB89:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4862);
    t29 = 1;
    if (4U == 4U)
        goto LAB92;

LAB93:    t29 = 0;

LAB94:    t4 = t29;
    goto LAB91;

LAB92:    t30 = 0;

LAB95:    if (t30 < 4U)
        goto LAB96;
    else
        goto LAB94;

LAB96:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB93;

LAB97:    t30 = (t30 + 1);
    goto LAB95;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/MIPS_TEST_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
