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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3219856015_3212880686_init();
    work_a_1271601373_3212880686_init();
    work_a_2716786906_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_1045427358_3212880686_init();
    work_a_2803646521_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_2137580395_3212880686_init();
    work_a_0873054598_3212880686_init();
    work_a_0115900056_3212880686_init();
    work_a_4130308381_3212880686_init();
    work_a_3114727575_3212880686_init();
    work_a_0403601100_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_3772491995_3212880686_init();
    work_a_1402801716_3212880686_init();
    work_a_3968679286_2372691052_init();


    xsi_register_tops("work_a_3968679286_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
