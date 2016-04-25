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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001306120606_1957175458_init();
    work_m_00000000004064848886_4033376979_init();
    work_m_00000000001525167357_2109230735_init();
    work_m_00000000001890489896_1118362476_init();
    work_m_00000000001942321893_3207835014_init();
    work_m_00000000003291740032_2035480523_init();
    work_m_00000000000580442372_3492611789_init();
    work_m_00000000000637870066_1252407768_init();
    work_m_00000000001890489896_0753492399_init();
    work_m_00000000001131683389_0886308060_init();
    work_m_00000000000637870066_1783616727_init();
    work_m_00000000001653876425_2979957399_init();
    work_m_00000000003971909252_0924759715_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003971909252_0924759715");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}