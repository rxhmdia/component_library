-- -------------------------------------------------------------
-- 
-- File Name: D:\NIH3Repo\simulink_models\models\delay_and_sum_beamformer\hdlsrc\DSBF\DSBF_subFilter.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_subFilter
-- Source Path: DSBF/dataplane/Avalon Data Processing/delay signals/delay signal/CIC interpolation compensator/FilterBank/subFilter
-- Hierarchy Level: 6
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DSBF_dataplane_pkg.ALL;

ENTITY DSBF_subFilter IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_2048_0                      :   IN    std_logic;
        dinReg2_0_re                      :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        coefIn                            :   IN    vector_of_std_logic_vector16(0 TO 18);  -- sfix16_En15 [19]
        dinRegVld                         :   IN    std_logic;
        syncReset                         :   IN    std_logic;
        dout_1_re                         :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En26
        doutVld                           :   OUT   std_logic
        );
END DSBF_subFilter;


ARCHITECTURE rtl OF DSBF_subFilter IS

  -- Component Declarations
  COMPONENT DSBF_FilterTapSystolicPreAddWvlIn
    PORT( clk                             :   IN    std_logic;
          enb_1_2048_0                    :   IN    std_logic;
          dinReg2_0_re                    :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          dinPreAdd                       :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          coefIn_0                        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          addin                           :   IN    std_logic_vector(48 DOWNTO 0);  -- sfix49_En43
          dinRegVld                       :   IN    std_logic;
          syncReset                       :   IN    std_logic;
          dinDly2                         :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          tapout                          :   OUT   std_logic_vector(48 DOWNTO 0)  -- sfix49_En43
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DSBF_FilterTapSystolicPreAddWvlIn
    USE ENTITY work.DSBF_FilterTapSystolicPreAddWvlIn(rtl);

  -- Signals
  SIGNAL intdelay_reg                     : std_logic_vector(0 TO 13);  -- ufix1 [14]
  SIGNAL vldShift                         : std_logic;
  SIGNAL vldOutTmp                        : std_logic;
  SIGNAL ZERO_OUT                         : signed(31 DOWNTO 0);  -- sfix32_En26
  SIGNAL addin                            : signed(48 DOWNTO 0);  -- sfix49_En43
  SIGNAL dinPreAdd                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL dinDly                           : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL dinDly_signed                    : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL dinDly2                          : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout                           : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_1                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_1                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_2                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_2                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_3                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_3                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_4                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_4                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_5                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_5                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_6                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_6                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL dinDly_7                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_7                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL tapout_8                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL ZERO                             : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL dinDly_8                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL tapout_9                         : std_logic_vector(48 DOWNTO 0);  -- ufix49
  SIGNAL tapout_signed                    : signed(48 DOWNTO 0);  -- sfix49_En43
  SIGNAL foutDly                          : signed(48 DOWNTO 0);  -- sfix49_En43
  SIGNAL dout_cast                        : signed(31 DOWNTO 0);  -- sfix32_En26
  SIGNAL muxOut                           : signed(31 DOWNTO 0);  -- sfix32_En26
  SIGNAL dout_1_re_tmp                    : signed(31 DOWNTO 0);  -- sfix32_En26

BEGIN
  u_FilterTap_1 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinReg2_0_re,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(0),  -- sfix16_En15
              addin => std_logic_vector(addin),  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly2,  -- sfix32_En28
              tapout => tapout  -- sfix49_En43
              );

  u_FilterTap_2 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly2,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(1),  -- sfix16_En15
              addin => tapout,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_1,  -- sfix32_En28
              tapout => tapout_1  -- sfix49_En43
              );

  u_FilterTap_3 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_1,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(2),  -- sfix16_En15
              addin => tapout_1,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_2,  -- sfix32_En28
              tapout => tapout_2  -- sfix49_En43
              );

  u_FilterTap_4 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_2,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(3),  -- sfix16_En15
              addin => tapout_2,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_3,  -- sfix32_En28
              tapout => tapout_3  -- sfix49_En43
              );

  u_FilterTap_5 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_3,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(4),  -- sfix16_En15
              addin => tapout_3,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_4,  -- sfix32_En28
              tapout => tapout_4  -- sfix49_En43
              );

  u_FilterTap_6 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_4,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(5),  -- sfix16_En15
              addin => tapout_4,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_5,  -- sfix32_En28
              tapout => tapout_5  -- sfix49_En43
              );

  u_FilterTap_7 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_5,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(6),  -- sfix16_En15
              addin => tapout_5,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_6,  -- sfix32_En28
              tapout => tapout_6  -- sfix49_En43
              );

  u_FilterTap_8 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_6,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(7),  -- sfix16_En15
              addin => tapout_6,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_7,  -- sfix32_En28
              tapout => tapout_7  -- sfix49_En43
              );

  u_FilterTap_9 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly_7,  -- sfix32_En28
              dinPreAdd => std_logic_vector(dinPreAdd),  -- sfix32_En28
              coefIn_0 => coefIn(8),  -- sfix16_En15
              addin => tapout_7,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly,  -- sfix32_En28
              tapout => tapout_8  -- sfix49_En43
              );

  u_FilterTap_10 : DSBF_FilterTapSystolicPreAddWvlIn
    PORT MAP( clk => clk,
              enb_1_2048_0 => enb_1_2048_0,
              dinReg2_0_re => dinDly,  -- sfix32_En28
              dinPreAdd => std_logic_vector(ZERO),  -- sfix32_En28
              coefIn_0 => coefIn(9),  -- sfix16_En15
              addin => tapout_8,  -- sfix49_En43
              dinRegVld => dinRegVld,
              syncReset => syncReset,
              dinDly2 => dinDly_8,  -- sfix32_En28
              tapout => tapout_9  -- sfix49_En43
              );

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      intdelay_reg <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        IF syncReset = '1' THEN
          intdelay_reg <= (OTHERS => '0');
        ELSIF dinRegVld = '1' THEN
          intdelay_reg(0) <= dinRegVld;
          intdelay_reg(1 TO 13) <= intdelay_reg(0 TO 12);
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_process;

  vldShift <= intdelay_reg(13);

  vldOutTmp <= dinRegVld AND vldShift;

  ZERO_OUT <= to_signed(0, 32);

  addin <= to_signed(0, 49);

  dinDly_signed <= signed(dinDly);

  intdelay_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dinPreAdd <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        IF syncReset = '1' THEN
          dinPreAdd <= to_signed(0, 32);
        ELSIF dinRegVld = '1' THEN
          dinPreAdd <= dinDly_signed;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_1_process;


  ZERO <= to_signed(0, 32);

  tapout_signed <= signed(tapout_9);

  intdelay_2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      foutDly <= to_signed(0, 49);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        IF syncReset = '1' THEN
          foutDly <= to_signed(0, 49);
        ELSIF dinRegVld = '1' THEN
          foutDly <= tapout_signed;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_2_process;


  dout_cast <= foutDly(48 DOWNTO 17);

  
  muxOut <= ZERO_OUT WHEN vldOutTmp = '0' ELSE
      dout_cast;

  intdelay_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      dout_1_re_tmp <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        IF syncReset = '1' THEN
          dout_1_re_tmp <= to_signed(0, 32);
        ELSE 
          dout_1_re_tmp <= muxOut;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_3_process;


  dout_1_re <= std_logic_vector(dout_1_re_tmp);

  intdelay_4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      doutVld <= '0';
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        IF syncReset = '1' THEN
          doutVld <= '0';
        ELSE 
          doutVld <= vldOutTmp;
        END IF;
      END IF;
    END IF;
  END PROCESS intdelay_4_process;


END rtl;

