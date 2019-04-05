local g_ShowPlayerLevels = true
local g_ShowMonsterLevels = true

local g_ShowKnowledgeHint = true
local g_ShowObtainedKnowledge = true
local g_ShowHpBarWithoutKnowledge = true

local g_ShowMonsterHp = true
local g_ShowPlayerHp = true

local g_ShowPlayerGearScore = true

g_KnowledgeTable_CharKey_Key = {}
g_KnowledgeTable_CharKey_Key[566] = {KnowledgeId = 7759, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[567] = {KnowledgeId = 9081, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[568] = {KnowledgeId = 9082, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[569] = {KnowledgeId = 7762, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[570] = {KnowledgeId = 9084, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[571] = {KnowledgeId = 9085, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[575] = {KnowledgeId = 7768, MainTheme = 31002}
g_KnowledgeTable_CharKey_Key[578] = {KnowledgeId = 9083, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[579] = {KnowledgeId = 9086, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[664] = {KnowledgeId = 7186, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[666] = {KnowledgeId = 7187, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[668] = {KnowledgeId = 7188, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[670] = {KnowledgeId = 7189, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[672] = {KnowledgeId = 7190, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[674] = {KnowledgeId = 7191, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[676] = {KnowledgeId = 7192, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[678] = {KnowledgeId = 7193, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[680] = {KnowledgeId = 7194, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[682] = {KnowledgeId = 7195, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[684] = {KnowledgeId = 7196, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[686] = {KnowledgeId = 7197, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[688] = {KnowledgeId = 7198, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[690] = {KnowledgeId = 7199, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[692] = {KnowledgeId = 7200, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[694] = {KnowledgeId = 7201, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[696] = {KnowledgeId = 7202, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[698] = {KnowledgeId = 7203, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[700] = {KnowledgeId = 7204, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[702] = {KnowledgeId = 7205, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[704] = {KnowledgeId = 7206, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[706] = {KnowledgeId = 7207, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[708] = {KnowledgeId = 7208, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[710] = {KnowledgeId = 7209, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[712] = {KnowledgeId = 7210, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[714] = {KnowledgeId = 7211, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[716] = {KnowledgeId = 7212, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[718] = {KnowledgeId = 7213, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[720] = {KnowledgeId = 7214, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[722] = {KnowledgeId = 7215, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[724] = {KnowledgeId = 7216, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[726] = {KnowledgeId = 7217, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[728] = {KnowledgeId = 7218, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[729] = {KnowledgeId = 7219, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[730] = {KnowledgeId = 7220, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[732] = {KnowledgeId = 7769, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[734] = {KnowledgeId = 7770, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[735] = {KnowledgeId = 7771, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[740] = {KnowledgeId = 7861, MainTheme = 31002}
g_KnowledgeTable_CharKey_Key[748] = {KnowledgeId = 7863, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[749] = {KnowledgeId = 7869, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[753] = {KnowledgeId = 7870, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[761] = {KnowledgeId = 7872, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[762] = {KnowledgeId = 7873, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[771] = {KnowledgeId = 7922, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[773] = {KnowledgeId = 7946, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[777] = {KnowledgeId = 7947, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[781] = {KnowledgeId = 7948, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[782] = {KnowledgeId = 7969, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[791] = {KnowledgeId = 7954, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[792] = {KnowledgeId = 7955, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[793] = {KnowledgeId = 7956, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[794] = {KnowledgeId = 7970, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[4008] = {KnowledgeId = 7793, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[4009] = {KnowledgeId = 7797, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[4051] = {KnowledgeId = 7581, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4052] = {KnowledgeId = 7582, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4053] = {KnowledgeId = 7050, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4054] = {KnowledgeId = 7583, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4055] = {KnowledgeId = 7584, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4056] = {KnowledgeId = 7051, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4057] = {KnowledgeId = 7585, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4058] = {KnowledgeId = 7586, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4059] = {KnowledgeId = 7052, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4060] = {KnowledgeId = 7587, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4061] = {KnowledgeId = 7588, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4062] = {KnowledgeId = 7053, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4063] = {KnowledgeId = 7589, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4064] = {KnowledgeId = 7590, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4065] = {KnowledgeId = 7054, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4066] = {KnowledgeId = 7591, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4067] = {KnowledgeId = 7592, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4068] = {KnowledgeId = 7593, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[4070] = {KnowledgeId = 7605, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[4076] = {KnowledgeId = 7221, MainTheme = 31004}
g_KnowledgeTable_CharKey_Key[4078] = {KnowledgeId = 7794, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4079] = {KnowledgeId = 7795, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4080] = {KnowledgeId = 7792, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4081] = {KnowledgeId = 7798, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4082] = {KnowledgeId = 7799, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4083] = {KnowledgeId = 7796, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4084] = {KnowledgeId = 7918, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4085] = {KnowledgeId = 9203, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4086] = {KnowledgeId = 9204, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4087] = {KnowledgeId = 9205, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4206] = {KnowledgeId = 7801, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[4251] = {KnowledgeId = 7594, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4252] = {KnowledgeId = 7595, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4253] = {KnowledgeId = 7055, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4254] = {KnowledgeId = 7596, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4255] = {KnowledgeId = 7597, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4256] = {KnowledgeId = 7056, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4257] = {KnowledgeId = 7598, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4258] = {KnowledgeId = 7599, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4259] = {KnowledgeId = 7057, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4260] = {KnowledgeId = 7606, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4261] = {KnowledgeId = 7612, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4262] = {KnowledgeId = 7802, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4263] = {KnowledgeId = 7803, MainTheme = 30601}
g_KnowledgeTable_CharKey_Key[4264] = {KnowledgeId = 7800, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4265] = {KnowledgeId = 7864, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4266] = {KnowledgeId = 7865, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4267] = {KnowledgeId = 7917, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4269] = {KnowledgeId = 7939, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4451] = {KnowledgeId = 7544, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4452] = {KnowledgeId = 7545, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4453] = {KnowledgeId = 7058, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4454] = {KnowledgeId = 7546, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4455] = {KnowledgeId = 7547, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4456] = {KnowledgeId = 7059, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4457] = {KnowledgeId = 7548, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4458] = {KnowledgeId = 7549, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4459] = {KnowledgeId = 7060, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4460] = {KnowledgeId = 7550, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4461] = {KnowledgeId = 7551, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4462] = {KnowledgeId = 7061, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4463] = {KnowledgeId = 7552, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4464] = {KnowledgeId = 7553, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4465] = {KnowledgeId = 7062, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4466] = {KnowledgeId = 7607, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4467] = {KnowledgeId = 7608, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4468] = {KnowledgeId = 7609, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4469] = {KnowledgeId = 7610, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4470] = {KnowledgeId = 7611, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4476] = {KnowledgeId = 7904, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[4477] = {KnowledgeId = 9065, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[4478] = {KnowledgeId = 7905, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[4479] = {KnowledgeId = 7906, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[4481] = {KnowledgeId = 7222, MainTheme = 31004}
g_KnowledgeTable_CharKey_Key[4483] = {KnowledgeId = 7805, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4485] = {KnowledgeId = 7804, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4490] = {KnowledgeId = 9206, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4491] = {KnowledgeId = 9207, MainTheme = 30502}
g_KnowledgeTable_CharKey_Key[4492] = {KnowledgeId = 9208, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4608] = {KnowledgeId = 7380, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4609] = {KnowledgeId = 7381, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4611] = {KnowledgeId = 7434, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[4651] = {KnowledgeId = 7408, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4652] = {KnowledgeId = 7409, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4653] = {KnowledgeId = 7063, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4654] = {KnowledgeId = 7410, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4655] = {KnowledgeId = 7411, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4656] = {KnowledgeId = 7064, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4657] = {KnowledgeId = 7412, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4658] = {KnowledgeId = 7413, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4659] = {KnowledgeId = 7065, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4660] = {KnowledgeId = 7414, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4661] = {KnowledgeId = 7415, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4662] = {KnowledgeId = 7066, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4663] = {KnowledgeId = 7416, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4664] = {KnowledgeId = 7417, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4665] = {KnowledgeId = 7067, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4666] = {KnowledgeId = 7418, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4667] = {KnowledgeId = 7419, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4668] = {KnowledgeId = 7068, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4669] = {KnowledgeId = 7420, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4670] = {KnowledgeId = 7788, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4671] = {KnowledgeId = 7789, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4672] = {KnowledgeId = 7790, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4673] = {KnowledgeId = 7435, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4674] = {KnowledgeId = 7436, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4675] = {KnowledgeId = 7791, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4676] = {KnowledgeId = 7382, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4677] = {KnowledgeId = 7383, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4678] = {KnowledgeId = 7384, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4680] = {KnowledgeId = 7386, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4681] = {KnowledgeId = 7387, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4682] = {KnowledgeId = 7388, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4684] = {KnowledgeId = 7224, MainTheme = 31005}
g_KnowledgeTable_CharKey_Key[4685] = {KnowledgeId = 9109, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4686] = {KnowledgeId = 9110, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4687] = {KnowledgeId = 7919, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4688] = {KnowledgeId = 7924, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4691] = {KnowledgeId = 7940, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4694] = {KnowledgeId = 9211, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4695] = {KnowledgeId = 9212, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4696] = {KnowledgeId = 9213, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4697] = {KnowledgeId = 9214, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4698] = {KnowledgeId = 9215, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4699] = {KnowledgeId = 9216, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4700] = {KnowledgeId = 9238, MainTheme = 30802}
g_KnowledgeTable_CharKey_Key[4701] = {KnowledgeId = 7964, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4702] = {KnowledgeId = 7965, MainTheme = 30701}
g_KnowledgeTable_CharKey_Key[4703] = {KnowledgeId = 7966, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4912] = {KnowledgeId = 9102, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4913] = {KnowledgeId = 9103, MainTheme = 30604}
g_KnowledgeTable_CharKey_Key[4918] = {KnowledgeId = 7934, MainTheme = 30602}
g_KnowledgeTable_CharKey_Key[4919] = {KnowledgeId = 7938, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[4920] = {KnowledgeId = 7942, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[4924] = {KnowledgeId = 7949, MainTheme = 30500}
g_KnowledgeTable_CharKey_Key[4927] = {KnowledgeId = 9303, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[5012] = {KnowledgeId = 7390, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[5013] = {KnowledgeId = 7391, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[5020] = {KnowledgeId = 7968, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[5201] = {KnowledgeId = 7156, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5202] = {KnowledgeId = 7157, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5203] = {KnowledgeId = 7158, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5204] = {KnowledgeId = 7159, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5205] = {KnowledgeId = 7160, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5206] = {KnowledgeId = 7161, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5207] = {KnowledgeId = 7162, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5208] = {KnowledgeId = 7163, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5209] = {KnowledgeId = 7164, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5210] = {KnowledgeId = 7165, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5211] = {KnowledgeId = 7166, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5212] = {KnowledgeId = 7167, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5213] = {KnowledgeId = 7168, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5214] = {KnowledgeId = 7169, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5215] = {KnowledgeId = 7170, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5216] = {KnowledgeId = 7171, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[5217] = {KnowledgeId = 7898, MainTheme = 30904}
g_KnowledgeTable_CharKey_Key[5301] = {KnowledgeId = 7225, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[5302] = {KnowledgeId = 7226, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[5401] = {KnowledgeId = 7359, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5402] = {KnowledgeId = 7360, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5403] = {KnowledgeId = 7361, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5404] = {KnowledgeId = 7362, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5405] = {KnowledgeId = 7363, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5406] = {KnowledgeId = 7358, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[5407] = {KnowledgeId = 7365, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5408] = {KnowledgeId = 7366, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5409] = {KnowledgeId = 7367, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5410] = {KnowledgeId = 7368, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5411] = {KnowledgeId = 7369, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5412] = {KnowledgeId = 7370, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5413] = {KnowledgeId = 7371, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5414] = {KnowledgeId = 7372, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5415] = {KnowledgeId = 7373, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5416] = {KnowledgeId = 7374, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5417] = {KnowledgeId = 7375, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5418] = {KnowledgeId = 7376, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5419] = {KnowledgeId = 7377, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5420] = {KnowledgeId = 7378, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[5484] = {KnowledgeId = 7809, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[5485] = {KnowledgeId = 7810, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[5486] = {KnowledgeId = 7811, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[5487] = {KnowledgeId = 7812, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[5488] = {KnowledgeId = 7813, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[5489] = {KnowledgeId = 7814, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5490] = {KnowledgeId = 7815, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5491] = {KnowledgeId = 7816, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5492] = {KnowledgeId = 7817, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5493] = {KnowledgeId = 7818, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5494] = {KnowledgeId = 7819, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[5495] = {KnowledgeId = 7820, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[5601] = {KnowledgeId = 7576, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5602] = {KnowledgeId = 7577, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5603] = {KnowledgeId = 7150, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[5604] = {KnowledgeId = 7151, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[5851] = {KnowledgeId = 7600, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[5852] = {KnowledgeId = 7601, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[5853] = {KnowledgeId = 7602, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[5854] = {KnowledgeId = 7603, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[5855] = {KnowledgeId = 7554, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5856] = {KnowledgeId = 7555, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5857] = {KnowledgeId = 7556, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5858] = {KnowledgeId = 7557, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[5859] = {KnowledgeId = 7920, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[5860] = {KnowledgeId = 7941, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[6151] = {KnowledgeId = 7421, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6152] = {KnowledgeId = 7422, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6153] = {KnowledgeId = 7423, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6154] = {KnowledgeId = 7424, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6155] = {KnowledgeId = 7425, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6156] = {KnowledgeId = 7426, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6157] = {KnowledgeId = 7613, MainTheme = 30400}
g_KnowledgeTable_CharKey_Key[6158] = {KnowledgeId = 7614, MainTheme = 30400}
g_KnowledgeTable_CharKey_Key[6159] = {KnowledgeId = 7427, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6160] = {KnowledgeId = 7428, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6161] = {KnowledgeId = 7429, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6162] = {KnowledgeId = 7430, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6163] = {KnowledgeId = 7431, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6164] = {KnowledgeId = 7432, MainTheme = 30301}
g_KnowledgeTable_CharKey_Key[6165] = {KnowledgeId = 7615, MainTheme = 30400}
g_KnowledgeTable_CharKey_Key[6166] = {KnowledgeId = 7616, MainTheme = 30400}
g_KnowledgeTable_CharKey_Key[6167] = {KnowledgeId = 7069, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6168] = {KnowledgeId = 7070, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6169] = {KnowledgeId = 7071, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6170] = {KnowledgeId = 7072, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6171] = {KnowledgeId = 7073, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6172] = {KnowledgeId = 7074, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6173] = {KnowledgeId = 7075, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6174] = {KnowledgeId = 7076, MainTheme = 30202}
g_KnowledgeTable_CharKey_Key[6183] = {KnowledgeId = 7223, MainTheme = 31005}
g_KnowledgeTable_CharKey_Key[6351] = {KnowledgeId = 7077, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6352] = {KnowledgeId = 7078, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6353] = {KnowledgeId = 7079, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6354] = {KnowledgeId = 7080, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6355] = {KnowledgeId = 7081, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6401] = {KnowledgeId = 7874, MainTheme = 31281}
g_KnowledgeTable_CharKey_Key[6403] = {KnowledgeId = 7876, MainTheme = 31281}
g_KnowledgeTable_CharKey_Key[6404] = {KnowledgeId = 7877, MainTheme = 31281}
g_KnowledgeTable_CharKey_Key[6405] = {KnowledgeId = 7878, MainTheme = 31281}
g_KnowledgeTable_CharKey_Key[6406] = {KnowledgeId = 7879, MainTheme = 31281}
g_KnowledgeTable_CharKey_Key[6501] = {KnowledgeId = 7880, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6502] = {KnowledgeId = 7881, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6503] = {KnowledgeId = 7882, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6504] = {KnowledgeId = 7884, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6505] = {KnowledgeId = 7883, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6506] = {KnowledgeId = 7885, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6507] = {KnowledgeId = 7886, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6508] = {KnowledgeId = 7887, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6509] = {KnowledgeId = 7888, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6511] = {KnowledgeId = 7889, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6512] = {KnowledgeId = 7890, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6513] = {KnowledgeId = 7891, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6514] = {KnowledgeId = 7892, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6515] = {KnowledgeId = 7893, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6516] = {KnowledgeId = 7894, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6517] = {KnowledgeId = 7895, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6518] = {KnowledgeId = 7896, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6519] = {KnowledgeId = 7897, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6520] = {KnowledgeId = 7900, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[6521] = {KnowledgeId = 7901, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[6522] = {KnowledgeId = 7902, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[6523] = {KnowledgeId = 7903, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[6524] = {KnowledgeId = 7907, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6525] = {KnowledgeId = 7908, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6526] = {KnowledgeId = 7909, MainTheme = 31282}
g_KnowledgeTable_CharKey_Key[6527] = {KnowledgeId = 7915, MainTheme = 30303}
g_KnowledgeTable_CharKey_Key[6528] = {KnowledgeId = 7916, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[6601] = {KnowledgeId = 7082, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6602] = {KnowledgeId = 7083, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6603] = {KnowledgeId = 7084, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6604] = {KnowledgeId = 7085, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6605] = {KnowledgeId = 7086, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6606] = {KnowledgeId = 7921, MainTheme = 31006}
g_KnowledgeTable_CharKey_Key[6651] = {KnowledgeId = 7152, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[6656] = {KnowledgeId = 7153, MainTheme = 30400}
g_KnowledgeTable_CharKey_Key[6701] = {KnowledgeId = 7257, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6702] = {KnowledgeId = 7258, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6703] = {KnowledgeId = 7259, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6704] = {KnowledgeId = 7260, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6705] = {KnowledgeId = 7261, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6706] = {KnowledgeId = 7262, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6707] = {KnowledgeId = 7286, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[6801] = {KnowledgeId = 7263, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6802] = {KnowledgeId = 7264, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6803] = {KnowledgeId = 7265, MainTheme = 30949}
g_KnowledgeTable_CharKey_Key[6901] = {KnowledgeId = 7266, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6902] = {KnowledgeId = 7267, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6903] = {KnowledgeId = 7268, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6904] = {KnowledgeId = 7269, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6905] = {KnowledgeId = 7270, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6906] = {KnowledgeId = 7294, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[6907] = {KnowledgeId = 7272, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6908] = {KnowledgeId = 7273, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6909] = {KnowledgeId = 7274, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6910] = {KnowledgeId = 7275, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6911] = {KnowledgeId = 7276, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6912] = {KnowledgeId = 7277, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6913] = {KnowledgeId = 7278, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6914] = {KnowledgeId = 7279, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6915] = {KnowledgeId = 7280, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6916] = {KnowledgeId = 7281, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6917] = {KnowledgeId = 7282, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6918] = {KnowledgeId = 7283, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6919] = {KnowledgeId = 7284, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6920] = {KnowledgeId = 7285, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6924] = {KnowledgeId = 7828, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6925] = {KnowledgeId = 7829, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6926] = {KnowledgeId = 7830, MainTheme = 30950}
g_KnowledgeTable_CharKey_Key[6927] = {KnowledgeId = 7831, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6928] = {KnowledgeId = 7832, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6929] = {KnowledgeId = 7833, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[6930] = {KnowledgeId = 7834, MainTheme = 30951}
g_KnowledgeTable_CharKey_Key[7001] = {KnowledgeId = 7290, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7002] = {KnowledgeId = 7291, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7003] = {KnowledgeId = 7287, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7004] = {KnowledgeId = 7289, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7005] = {KnowledgeId = 7288, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7016] = {KnowledgeId = 7835, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7017] = {KnowledgeId = 7836, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7018] = {KnowledgeId = 7837, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7019] = {KnowledgeId = 7838, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7020] = {KnowledgeId = 7839, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7021] = {KnowledgeId = 7840, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7022] = {KnowledgeId = 7841, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7023] = {KnowledgeId = 9104, MainTheme = 30303}
g_KnowledgeTable_CharKey_Key[7028] = {KnowledgeId = 9129, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[7101] = {KnowledgeId = 7571, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7102] = {KnowledgeId = 7572, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7103] = {KnowledgeId = 7573, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7104] = {KnowledgeId = 7574, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7105] = {KnowledgeId = 7575, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7106] = {KnowledgeId = 7851, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7107] = {KnowledgeId = 7852, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7201] = {KnowledgeId = 7394, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7202] = {KnowledgeId = 7395, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7203] = {KnowledgeId = 7396, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7204] = {KnowledgeId = 7397, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7205] = {KnowledgeId = 7398, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7206] = {KnowledgeId = 7849, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7207] = {KnowledgeId = 7850, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[7301] = {KnowledgeId = 7227, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7302] = {KnowledgeId = 7228, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7303] = {KnowledgeId = 7229, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7304] = {KnowledgeId = 7230, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7305] = {KnowledgeId = 7231, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7306] = {KnowledgeId = 7232, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7307] = {KnowledgeId = 7233, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7308] = {KnowledgeId = 7234, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7309] = {KnowledgeId = 7235, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7311] = {KnowledgeId = 7292, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7312] = {KnowledgeId = 7293, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7318] = {KnowledgeId = 7297, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7319] = {KnowledgeId = 7298, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7320] = {KnowledgeId = 7300, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7348] = {KnowledgeId = 7393, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[7601] = {KnowledgeId = 76, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[7602] = {KnowledgeId = 77, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[7603] = {KnowledgeId = 78, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[7604] = {KnowledgeId = 79, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[7605] = {KnowledgeId = 80, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[7611] = {KnowledgeId = 226, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[7612] = {KnowledgeId = 227, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[7613] = {KnowledgeId = 228, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[7614] = {KnowledgeId = 229, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[7615] = {KnowledgeId = 230, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[7621] = {KnowledgeId = 569, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7622] = {KnowledgeId = 570, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7623] = {KnowledgeId = 571, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7624] = {KnowledgeId = 572, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7625] = {KnowledgeId = 573, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7626] = {KnowledgeId = 574, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7627] = {KnowledgeId = 575, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[7631] = {KnowledgeId = 807, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[7632] = {KnowledgeId = 808, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[7633] = {KnowledgeId = 809, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[7634] = {KnowledgeId = 810, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[7635] = {KnowledgeId = 832, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[7702] = {KnowledgeId = 7578, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7703] = {KnowledgeId = 7579, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7704] = {KnowledgeId = 7580, MainTheme = 30501}
g_KnowledgeTable_CharKey_Key[7918] = {KnowledgeId = 7541, MainTheme = 30302}
g_KnowledgeTable_CharKey_Key[7919] = {KnowledgeId = 7542, MainTheme = 30302}
g_KnowledgeTable_CharKey_Key[7920] = {KnowledgeId = 7543, MainTheme = 30302}
g_KnowledgeTable_CharKey_Key[8201] = {KnowledgeId = 8501, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8202] = {KnowledgeId = 8502, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8203] = {KnowledgeId = 8503, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8204] = {KnowledgeId = 8504, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8205] = {KnowledgeId = 8505, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8206] = {KnowledgeId = 8506, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8207] = {KnowledgeId = 8507, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8208] = {KnowledgeId = 8508, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8209] = {KnowledgeId = 8509, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8210] = {KnowledgeId = 8510, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8211] = {KnowledgeId = 8511, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8212] = {KnowledgeId = 8512, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8213] = {KnowledgeId = 8513, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8214] = {KnowledgeId = 8514, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8215] = {KnowledgeId = 8515, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8216] = {KnowledgeId = 8516, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8217] = {KnowledgeId = 8517, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8218] = {KnowledgeId = 8518, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8219] = {KnowledgeId = 8519, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8220] = {KnowledgeId = 8520, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8221] = {KnowledgeId = 8521, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8222] = {KnowledgeId = 8522, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8223] = {KnowledgeId = 8523, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8224] = {KnowledgeId = 8524, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8225] = {KnowledgeId = 8525, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8226] = {KnowledgeId = 8526, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8227] = {KnowledgeId = 8527, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8228] = {KnowledgeId = 8528, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8229] = {KnowledgeId = 8529, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8230] = {KnowledgeId = 8530, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8231] = {KnowledgeId = 8531, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8232] = {KnowledgeId = 8532, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8233] = {KnowledgeId = 8533, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8234] = {KnowledgeId = 8534, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8235] = {KnowledgeId = 8535, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8236] = {KnowledgeId = 8536, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8237] = {KnowledgeId = 8537, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8238] = {KnowledgeId = 8538, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8239] = {KnowledgeId = 8539, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8240] = {KnowledgeId = 8540, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8241] = {KnowledgeId = 8541, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8242] = {KnowledgeId = 8542, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8243] = {KnowledgeId = 8543, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8244] = {KnowledgeId = 8544, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8245] = {KnowledgeId = 8545, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8246] = {KnowledgeId = 8546, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8247] = {KnowledgeId = 8547, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8248] = {KnowledgeId = 8548, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8249] = {KnowledgeId = 8549, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8250] = {KnowledgeId = 8550, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8251] = {KnowledgeId = 8551, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8252] = {KnowledgeId = 8552, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8253] = {KnowledgeId = 8553, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8254] = {KnowledgeId = 8554, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8255] = {KnowledgeId = 8555, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8256] = {KnowledgeId = 8556, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8257] = {KnowledgeId = 8557, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8258] = {KnowledgeId = 8558, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8259] = {KnowledgeId = 8559, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8260] = {KnowledgeId = 8560, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8261] = {KnowledgeId = 8561, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8262] = {KnowledgeId = 8562, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8263] = {KnowledgeId = 8563, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8264] = {KnowledgeId = 8564, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8265] = {KnowledgeId = 8565, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8266] = {KnowledgeId = 8566, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8267] = {KnowledgeId = 8567, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8268] = {KnowledgeId = 8568, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8269] = {KnowledgeId = 8569, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8270] = {KnowledgeId = 8570, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8271] = {KnowledgeId = 8571, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8272] = {KnowledgeId = 8572, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8273] = {KnowledgeId = 8573, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8274] = {KnowledgeId = 8574, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8275] = {KnowledgeId = 8575, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8276] = {KnowledgeId = 8576, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8277] = {KnowledgeId = 8577, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8278] = {KnowledgeId = 8578, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8279] = {KnowledgeId = 8579, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8281] = {KnowledgeId = 8580, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8282] = {KnowledgeId = 8581, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8283] = {KnowledgeId = 8582, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8284] = {KnowledgeId = 8583, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8285] = {KnowledgeId = 8584, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8286] = {KnowledgeId = 8585, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8287] = {KnowledgeId = 8586, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8288] = {KnowledgeId = 8587, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8289] = {KnowledgeId = 8588, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8290] = {KnowledgeId = 8589, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8291] = {KnowledgeId = 8590, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8292] = {KnowledgeId = 8591, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8293] = {KnowledgeId = 8592, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8294] = {KnowledgeId = 8593, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8295] = {KnowledgeId = 8594, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8296] = {KnowledgeId = 8595, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8297] = {KnowledgeId = 8596, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8298] = {KnowledgeId = 8597, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8299] = {KnowledgeId = 8598, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8300] = {KnowledgeId = 8599, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8301] = {KnowledgeId = 8600, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8302] = {KnowledgeId = 8601, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8303] = {KnowledgeId = 8602, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8304] = {KnowledgeId = 8603, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8305] = {KnowledgeId = 8604, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8306] = {KnowledgeId = 8615, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8307] = {KnowledgeId = 8616, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8308] = {KnowledgeId = 8617, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8309] = {KnowledgeId = 8618, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8310] = {KnowledgeId = 8619, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8311] = {KnowledgeId = 8620, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8312] = {KnowledgeId = 8621, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8313] = {KnowledgeId = 8622, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8314] = {KnowledgeId = 8623, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8315] = {KnowledgeId = 8624, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8316] = {KnowledgeId = 8625, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8317] = {KnowledgeId = 8626, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8318] = {KnowledgeId = 8627, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8319] = {KnowledgeId = 8644, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8320] = {KnowledgeId = 8629, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8321] = {KnowledgeId = 8630, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8322] = {KnowledgeId = 8631, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8323] = {KnowledgeId = 8628, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8324] = {KnowledgeId = 8632, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8325] = {KnowledgeId = 8633, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8326] = {KnowledgeId = 8634, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8327] = {KnowledgeId = 8635, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8328] = {KnowledgeId = 8636, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8329] = {KnowledgeId = 8613, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8330] = {KnowledgeId = 8614, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8331] = {KnowledgeId = 8605, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8332] = {KnowledgeId = 8606, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8333] = {KnowledgeId = 8607, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8334] = {KnowledgeId = 8608, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8335] = {KnowledgeId = 8609, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8336] = {KnowledgeId = 8610, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8337] = {KnowledgeId = 8611, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8338] = {KnowledgeId = 8612, MainTheme = 30053}
g_KnowledgeTable_CharKey_Key[8339] = {KnowledgeId = 8639, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8340] = {KnowledgeId = 8640, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8341] = {KnowledgeId = 8641, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8342] = {KnowledgeId = 8642, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8343] = {KnowledgeId = 8643, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8344] = {KnowledgeId = 9130, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8345] = {KnowledgeId = 9131, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8346] = {KnowledgeId = 9132, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8347] = {KnowledgeId = 9133, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8348] = {KnowledgeId = 9134, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8349] = {KnowledgeId = 9135, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8350] = {KnowledgeId = 9136, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8351] = {KnowledgeId = 9174, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8352] = {KnowledgeId = 9175, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8353] = {KnowledgeId = 9176, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8354] = {KnowledgeId = 9177, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8355] = {KnowledgeId = 9178, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8356] = {KnowledgeId = 9179, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8357] = {KnowledgeId = 9244, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8358] = {KnowledgeId = 9245, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8359] = {KnowledgeId = 9246, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8360] = {KnowledgeId = 9247, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8361] = {KnowledgeId = 9248, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8362] = {KnowledgeId = 9249, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8363] = {KnowledgeId = 9250, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8364] = {KnowledgeId = 9251, MainTheme = 30052}
g_KnowledgeTable_CharKey_Key[8365] = {KnowledgeId = 9252, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8366] = {KnowledgeId = 9253, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8367] = {KnowledgeId = 9254, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8368] = {KnowledgeId = 9255, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8369] = {KnowledgeId = 9256, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8370] = {KnowledgeId = 9257, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8451] = {KnowledgeId = 8637, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8452] = {KnowledgeId = 8638, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8453] = {KnowledgeId = 8645, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8454] = {KnowledgeId = 8646, MainTheme = 30055}
g_KnowledgeTable_CharKey_Key[8455] = {KnowledgeId = 9180, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8457] = {KnowledgeId = 9181, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8458] = {KnowledgeId = 9258, MainTheme = 30054}
g_KnowledgeTable_CharKey_Key[8501] = {KnowledgeId = 7437, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8502] = {KnowledgeId = 7438, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8503] = {KnowledgeId = 7439, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8504] = {KnowledgeId = 7440, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8505] = {KnowledgeId = 7441, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8506] = {KnowledgeId = 7442, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8507] = {KnowledgeId = 7443, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8508] = {KnowledgeId = 7444, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8509] = {KnowledgeId = 7445, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8510] = {KnowledgeId = 4239, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[8511] = {KnowledgeId = 7447, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8512] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[8513] = {KnowledgeId = 4203, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[8514] = {KnowledgeId = 7450, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8515] = {KnowledgeId = 7451, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8516] = {KnowledgeId = 7452, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8518] = {KnowledgeId = 4109, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8519] = {KnowledgeId = 7455, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8520] = {KnowledgeId = 7456, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8521] = {KnowledgeId = 7457, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8522] = {KnowledgeId = 4359, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[8523] = {KnowledgeId = 4360, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[8525] = {KnowledgeId = 7461, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8526] = {KnowledgeId = 7462, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8527] = {KnowledgeId = 4283, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8528] = {KnowledgeId = 7464, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8529] = {KnowledgeId = 7465, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8530] = {KnowledgeId = 7466, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8531] = {KnowledgeId = 7467, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8532] = {KnowledgeId = 7468, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8533] = {KnowledgeId = 7469, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8534] = {KnowledgeId = 7470, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8535] = {KnowledgeId = 7471, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8536] = {KnowledgeId = 7472, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8537] = {KnowledgeId = 7473, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8538] = {KnowledgeId = 7474, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8539] = {KnowledgeId = 7475, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8540] = {KnowledgeId = 4241, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[8541] = {KnowledgeId = 4038, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[8542] = {KnowledgeId = 7478, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8543] = {KnowledgeId = 7479, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8544] = {KnowledgeId = 4268, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[8546] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8547] = {KnowledgeId = 7483, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8548] = {KnowledgeId = 7484, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8549] = {KnowledgeId = 4082, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[8551] = {KnowledgeId = 7487, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8552] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8553] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8554] = {KnowledgeId = 7490, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8555] = {KnowledgeId = 7491, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8556] = {KnowledgeId = 7492, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8557] = {KnowledgeId = 7493, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8558] = {KnowledgeId = 7494, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8559] = {KnowledgeId = 7495, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8560] = {KnowledgeId = 7496, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8561] = {KnowledgeId = 7497, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8562] = {KnowledgeId = 4148, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[8563] = {KnowledgeId = 7499, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8564] = {KnowledgeId = 4286, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[8565] = {KnowledgeId = 7501, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8566] = {KnowledgeId = 7502, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8568] = {KnowledgeId = 7504, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8569] = {KnowledgeId = 7505, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8570] = {KnowledgeId = 7506, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8571] = {KnowledgeId = 7507, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8572] = {KnowledgeId = 7508, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8573] = {KnowledgeId = 7509, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8574] = {KnowledgeId = 7510, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8575] = {KnowledgeId = 7511, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8576] = {KnowledgeId = 7512, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8577] = {KnowledgeId = 7513, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8578] = {KnowledgeId = 7514, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8579] = {KnowledgeId = 7515, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8580] = {KnowledgeId = 4334, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[8581] = {KnowledgeId = 4274, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[8582] = {KnowledgeId = 7517, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8583] = {KnowledgeId = 4162, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[8584] = {KnowledgeId = 7519, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8585] = {KnowledgeId = 7520, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8586] = {KnowledgeId = 7521, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8587] = {KnowledgeId = 4090, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[8588] = {KnowledgeId = 7523, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8591] = {KnowledgeId = 7526, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8592] = {KnowledgeId = 7527, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8593] = {KnowledgeId = 4610, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[8594] = {KnowledgeId = 4487, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[8595] = {KnowledgeId = 7530, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8596] = {KnowledgeId = 7531, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8597] = {KnowledgeId = 7532, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8598] = {KnowledgeId = 7533, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8599] = {KnowledgeId = 7534, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8600] = {KnowledgeId = 7535, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8601] = {KnowledgeId = 7536, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8602] = {KnowledgeId = 7537, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8603] = {KnowledgeId = 4007, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[8604] = {KnowledgeId = 4388, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[8605] = {KnowledgeId = 7540, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8608] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8609] = {KnowledgeId = 4082, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[8610] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8619] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8621] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[8629] = {KnowledgeId = 7786, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8630] = {KnowledgeId = 7787, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8631] = {KnowledgeId = 7778, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8632] = {KnowledgeId = 7779, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8633] = {KnowledgeId = 7780, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8634] = {KnowledgeId = 7781, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8635] = {KnowledgeId = 7782, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8636] = {KnowledgeId = 7783, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8637] = {KnowledgeId = 7784, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8638] = {KnowledgeId = 7785, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8639] = {KnowledgeId = 7928, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8640] = {KnowledgeId = 7929, MainTheme = 30308}
g_KnowledgeTable_CharKey_Key[8641] = {KnowledgeId = 7930, MainTheme = 30307}
g_KnowledgeTable_CharKey_Key[8642] = {KnowledgeId = 7931, MainTheme = 30306}
g_KnowledgeTable_CharKey_Key[8643] = {KnowledgeId = 7932, MainTheme = 30305}
g_KnowledgeTable_CharKey_Key[8644] = {KnowledgeId = 7933, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8645] = {KnowledgeId = 9259, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8646] = {KnowledgeId = 9260, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8647] = {KnowledgeId = 9261, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8648] = {KnowledgeId = 9262, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8649] = {KnowledgeId = 9263, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8650] = {KnowledgeId = 9264, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8651] = {KnowledgeId = 9265, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8652] = {KnowledgeId = 9266, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8653] = {KnowledgeId = 9267, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8654] = {KnowledgeId = 9268, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8655] = {KnowledgeId = 9269, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8656] = {KnowledgeId = 9270, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8657] = {KnowledgeId = 9271, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[8658] = {KnowledgeId = 9272, MainTheme = 30304}
g_KnowledgeTable_CharKey_Key[9001] = {KnowledgeId = 7154, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[9003] = {KnowledgeId = 7404, MainTheme = 30197}
g_KnowledgeTable_CharKey_Key[9004] = {KnowledgeId = 7405, MainTheme = 30197}
g_KnowledgeTable_CharKey_Key[9006] = {KnowledgeId = 7406, MainTheme = 30197}
g_KnowledgeTable_CharKey_Key[9008] = {KnowledgeId = 7155, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[9057] = {KnowledgeId = 7407, MainTheme = 30197}
g_KnowledgeTable_CharKey_Key[9061] = {KnowledgeId = 7400, MainTheme = 30203}
g_KnowledgeTable_CharKey_Key[9062] = {KnowledgeId = 7401, MainTheme = 30302}
g_KnowledgeTable_CharKey_Key[9063] = {KnowledgeId = 7402, MainTheme = 30203}
g_KnowledgeTable_CharKey_Key[9064] = {KnowledgeId = 7295, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[9065] = {KnowledgeId = 7296, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[9066] = {KnowledgeId = 7403, MainTheme = 30197}
g_KnowledgeTable_CharKey_Key[9201] = {KnowledgeId = 7042, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9202] = {KnowledgeId = 7043, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9203] = {KnowledgeId = 7044, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9204] = {KnowledgeId = 7090, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9205] = {KnowledgeId = 7091, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9206] = {KnowledgeId = 7092, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9207] = {KnowledgeId = 7093, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9208] = {KnowledgeId = 7094, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9209] = {KnowledgeId = 7095, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9210] = {KnowledgeId = 7172, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9211] = {KnowledgeId = 7173, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9213] = {KnowledgeId = 7001, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9214] = {KnowledgeId = 6989, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9215] = {KnowledgeId = 6990, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9216] = {KnowledgeId = 6991, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9217] = {KnowledgeId = 6992, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9218] = {KnowledgeId = 6993, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9219] = {KnowledgeId = 6994, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9220] = {KnowledgeId = 6995, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9241] = {KnowledgeId = 7009, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9255] = {KnowledgeId = 7010, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9256] = {KnowledgeId = 7011, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9257] = {KnowledgeId = 7012, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9258] = {KnowledgeId = 7013, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9259] = {KnowledgeId = 7014, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9260] = {KnowledgeId = 7015, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9261] = {KnowledgeId = 7016, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9262] = {KnowledgeId = 7017, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9263] = {KnowledgeId = 7018, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9264] = {KnowledgeId = 7019, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9265] = {KnowledgeId = 7020, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9266] = {KnowledgeId = 7021, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9267] = {KnowledgeId = 7041, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9268] = {KnowledgeId = 7022, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9269] = {KnowledgeId = 7023, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9270] = {KnowledgeId = 7040, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9307] = {KnowledgeId = 7854, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9308] = {KnowledgeId = 7855, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9309] = {KnowledgeId = 7856, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9313] = {KnowledgeId = 7925, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9314] = {KnowledgeId = 7926, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9315] = {KnowledgeId = 7927, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9316] = {KnowledgeId = 7943, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9318] = {KnowledgeId = 7958, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9401] = {KnowledgeId = 7002, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9402] = {KnowledgeId = 7045, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9403] = {KnowledgeId = 7046, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9404] = {KnowledgeId = 7047, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9405] = {KnowledgeId = 7049, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9406] = {KnowledgeId = 7096, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9407] = {KnowledgeId = 7003, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9408] = {KnowledgeId = 7097, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9409] = {KnowledgeId = 7004, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9410] = {KnowledgeId = 7098, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9411] = {KnowledgeId = 7048, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9412] = {KnowledgeId = 7099, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9413] = {KnowledgeId = 7024, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9414] = {KnowledgeId = 7025, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9415] = {KnowledgeId = 7026, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9416] = {KnowledgeId = 7027, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9417] = {KnowledgeId = 7028, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9418] = {KnowledgeId = 7029, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9419] = {KnowledgeId = 7030, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9420] = {KnowledgeId = 7031, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9421] = {KnowledgeId = 7032, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9422] = {KnowledgeId = 7033, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9423] = {KnowledgeId = 7034, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9424] = {KnowledgeId = 7035, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9425] = {KnowledgeId = 7036, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9426] = {KnowledgeId = 7037, MainTheme = 30107}
g_KnowledgeTable_CharKey_Key[9427] = {KnowledgeId = 7038, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9455] = {KnowledgeId = 7772, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9456] = {KnowledgeId = 7773, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9459] = {KnowledgeId = 7776, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9460] = {KnowledgeId = 7777, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9461] = {KnowledgeId = 6996, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9463] = {KnowledgeId = 6997, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9469] = {KnowledgeId = 7860, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[9471] = {KnowledgeId = 7910, MainTheme = 30105}
g_KnowledgeTable_CharKey_Key[9473] = {KnowledgeId = 7911, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[9475] = {KnowledgeId = 7912, MainTheme = 30104}
g_KnowledgeTable_CharKey_Key[9477] = {KnowledgeId = 7913, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9479] = {KnowledgeId = 7923, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9483] = {KnowledgeId = 7944, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9486] = {KnowledgeId = 7959, MainTheme = 30102}
g_KnowledgeTable_CharKey_Key[9488] = {KnowledgeId = 7960, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9490] = {KnowledgeId = 7961, MainTheme = 30101}
g_KnowledgeTable_CharKey_Key[9601] = {KnowledgeId = 7005, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9603] = {KnowledgeId = 7006, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9605] = {KnowledgeId = 7007, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9607] = {KnowledgeId = 7008, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9609] = {KnowledgeId = 6998, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9631] = {KnowledgeId = 7039, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9632] = {KnowledgeId = 7857, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9634] = {KnowledgeId = 7914, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9635] = {KnowledgeId = 7945, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9637] = {KnowledgeId = 7962, MainTheme = 30108}
g_KnowledgeTable_CharKey_Key[9691] = {KnowledgeId = 7951, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9692] = {KnowledgeId = 7952, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9693] = {KnowledgeId = 7953, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9694] = {KnowledgeId = 7957, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[9726] = {KnowledgeId = 7763, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9727] = {KnowledgeId = 7764, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9728] = {KnowledgeId = 7765, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9729] = {KnowledgeId = 7766, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9730] = {KnowledgeId = 7767, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9731] = {KnowledgeId = 7774, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9732] = {KnowledgeId = 7775, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9735] = {KnowledgeId = 7866, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9736] = {KnowledgeId = 7867, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9737] = {KnowledgeId = 7868, MainTheme = 30031}
g_KnowledgeTable_CharKey_Key[9746] = {KnowledgeId = 9322, MainTheme = 30800}
g_KnowledgeTable_CharKey_Key[9747] = {KnowledgeId = 9323, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[9748] = {KnowledgeId = 9324, MainTheme = 30500}
g_KnowledgeTable_CharKey_Key[9801] = {KnowledgeId = 8968, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9802] = {KnowledgeId = 8970, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9803] = {KnowledgeId = 8969, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9804] = {KnowledgeId = 8971, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9805] = {KnowledgeId = 8972, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9806] = {KnowledgeId = 8973, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9807] = {KnowledgeId = 8974, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9808] = {KnowledgeId = 8975, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9809] = {KnowledgeId = 8982, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9810] = {KnowledgeId = 8976, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9811] = {KnowledgeId = 8978, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9812] = {KnowledgeId = 8979, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9813] = {KnowledgeId = 8980, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9814] = {KnowledgeId = 8981, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9815] = {KnowledgeId = 8977, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9816] = {KnowledgeId = 8983, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9817] = {KnowledgeId = 8984, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9818] = {KnowledgeId = 8985, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9819] = {KnowledgeId = 8986, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9820] = {KnowledgeId = 8987, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9821] = {KnowledgeId = 8988, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9823] = {KnowledgeId = 8989, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9824] = {KnowledgeId = 8990, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9825] = {KnowledgeId = 8991, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9826] = {KnowledgeId = 8992, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9827] = {KnowledgeId = 8993, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9828] = {KnowledgeId = 8994, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9829] = {KnowledgeId = 8995, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9830] = {KnowledgeId = 8996, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9831] = {KnowledgeId = 8997, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9832] = {KnowledgeId = 8998, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9833] = {KnowledgeId = 8999, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9834] = {KnowledgeId = 9000, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9835] = {KnowledgeId = 9001, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9836] = {KnowledgeId = 9002, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9837] = {KnowledgeId = 9003, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9838] = {KnowledgeId = 9004, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9839] = {KnowledgeId = 9005, MainTheme = 30110}
g_KnowledgeTable_CharKey_Key[9840] = {KnowledgeId = 9006, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9841] = {KnowledgeId = 9007, MainTheme = 31012}
g_KnowledgeTable_CharKey_Key[9902] = {KnowledgeId = 9009, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9903] = {KnowledgeId = 9010, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9904] = {KnowledgeId = 9011, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9905] = {KnowledgeId = 9012, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9907] = {KnowledgeId = 9013, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9908] = {KnowledgeId = 9014, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9909] = {KnowledgeId = 9015, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9910] = {KnowledgeId = 9016, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9912] = {KnowledgeId = 9017, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9913] = {KnowledgeId = 9018, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9914] = {KnowledgeId = 9019, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9915] = {KnowledgeId = 9020, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9917] = {KnowledgeId = 9021, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9918] = {KnowledgeId = 9022, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9919] = {KnowledgeId = 9023, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9920] = {KnowledgeId = 9024, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9945] = {KnowledgeId = 9074, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9946] = {KnowledgeId = 9075, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9947] = {KnowledgeId = 9076, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9948] = {KnowledgeId = 9077, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9949] = {KnowledgeId = 9078, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9950] = {KnowledgeId = 9079, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9960] = {KnowledgeId = 9008, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9968] = {KnowledgeId = 9126, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9969] = {KnowledgeId = 9127, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9970] = {KnowledgeId = 9128, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9971] = {KnowledgeId = 9141, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9972] = {KnowledgeId = 9142, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9973] = {KnowledgeId = 9143, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9974] = {KnowledgeId = 9144, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9975] = {KnowledgeId = 9145, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9976] = {KnowledgeId = 9146, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9986] = {KnowledgeId = 9147, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[9987] = {KnowledgeId = 9148, MainTheme = 31013}
g_KnowledgeTable_CharKey_Key[10004] = {KnowledgeId = 7302, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10005] = {KnowledgeId = 9202, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10006] = {KnowledgeId = 9202, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10008] = {KnowledgeId = 7617, MainTheme = 31011}
g_KnowledgeTable_CharKey_Key[10009] = {KnowledgeId = 7303, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10010] = {KnowledgeId = 7618, MainTheme = 31011}
g_KnowledgeTable_CharKey_Key[10013] = {KnowledgeId = 7304, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10014] = {KnowledgeId = 7619, MainTheme = 31011}
g_KnowledgeTable_CharKey_Key[10017] = {KnowledgeId = 7305, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10043] = {KnowledgeId = 7307, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10045] = {KnowledgeId = 7308, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10047] = {KnowledgeId = 7309, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10049] = {KnowledgeId = 7310, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10051] = {KnowledgeId = 7311, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10053] = {KnowledgeId = 7312, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10055] = {KnowledgeId = 7313, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10057] = {KnowledgeId = 7314, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10059] = {KnowledgeId = 7315, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10061] = {KnowledgeId = 7316, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10063] = {KnowledgeId = 7317, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10065] = {KnowledgeId = 7318, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10067] = {KnowledgeId = 7319, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10069] = {KnowledgeId = 7326, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10071] = {KnowledgeId = 7325, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10073] = {KnowledgeId = 7323, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10075] = {KnowledgeId = 7324, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10079] = {KnowledgeId = 7322, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10081] = {KnowledgeId = 7328, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10083] = {KnowledgeId = 7321, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10085] = {KnowledgeId = 7320, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10087] = {KnowledgeId = 7327, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10088] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10089] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10090] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10091] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10092] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10093] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10094] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10095] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10096] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10097] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10098] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10099] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10100] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10104] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10105] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10106] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10107] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10108] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10109] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10110] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10111] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10114] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10115] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10116] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10117] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10118] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10119] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10120] = {KnowledgeId = 7332, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10121] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10122] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10123] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10124] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10125] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10126] = {KnowledgeId = 7330, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10127] = {KnowledgeId = 7331, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10128] = {KnowledgeId = 7331, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10129] = {KnowledgeId = 7331, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10130] = {KnowledgeId = 7331, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10131] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10132] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10133] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10134] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10135] = {KnowledgeId = 7333, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10136] = {KnowledgeId = 7847, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10137] = {KnowledgeId = 7847, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10141] = {KnowledgeId = 7848, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10144] = {KnowledgeId = 7848, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10149] = {KnowledgeId = 7793, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10150] = {KnowledgeId = 7797, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10151] = {KnowledgeId = 7801, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10157] = {KnowledgeId = 7354, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[10201] = {KnowledgeId = 7351, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10202] = {KnowledgeId = 9225, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10203] = {KnowledgeId = 9226, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10204] = {KnowledgeId = 9227, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10205] = {KnowledgeId = 7359, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10206] = {KnowledgeId = 9228, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10207] = {KnowledgeId = 9229, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10208] = {KnowledgeId = 7392, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10209] = {KnowledgeId = 7392, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10210] = {KnowledgeId = 7392, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10211] = {KnowledgeId = 7350, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10212] = {KnowledgeId = 9230, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10213] = {KnowledgeId = 9231, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10214] = {KnowledgeId = 9232, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10215] = {KnowledgeId = 9232, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10216] = {KnowledgeId = 9233, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10217] = {KnowledgeId = 9234, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10218] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10219] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10220] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10221] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10222] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10223] = {KnowledgeId = 7336, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10226] = {KnowledgeId = 7353, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10236] = {KnowledgeId = 7352, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10247] = {KnowledgeId = 7298, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10248] = {KnowledgeId = 7298, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10249] = {KnowledgeId = 7298, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10250] = {KnowledgeId = 7300, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10251] = {KnowledgeId = 7300, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10252] = {KnowledgeId = 7300, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10254] = {KnowledgeId = 7297, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10255] = {KnowledgeId = 7297, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10256] = {KnowledgeId = 7291, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10257] = {KnowledgeId = 7291, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10258] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10259] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10260] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10261] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10262] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10263] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10264] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10265] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10266] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10267] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10268] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10269] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10270] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10271] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10272] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10273] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10274] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10276] = {KnowledgeId = 7299, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10280] = {KnowledgeId = 7393, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10281] = {KnowledgeId = 7393, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10287] = {KnowledgeId = 7809, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10288] = {KnowledgeId = 7810, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10289] = {KnowledgeId = 7811, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10290] = {KnowledgeId = 7840, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10291] = {KnowledgeId = 7841, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10304] = {KnowledgeId = 7637, MainTheme = 31019}
g_KnowledgeTable_CharKey_Key[10401] = {KnowledgeId = 7365, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10402] = {KnowledgeId = 9218, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10403] = {KnowledgeId = 7366, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10404] = {KnowledgeId = 7367, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10405] = {KnowledgeId = 7368, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10406] = {KnowledgeId = 7369, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10407] = {KnowledgeId = 7370, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10408] = {KnowledgeId = 7371, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10409] = {KnowledgeId = 7372, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10410] = {KnowledgeId = 7373, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10411] = {KnowledgeId = 9219, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10412] = {KnowledgeId = 7374, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10413] = {KnowledgeId = 7375, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10414] = {KnowledgeId = 7376, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10415] = {KnowledgeId = 9220, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10416] = {KnowledgeId = 7377, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10417] = {KnowledgeId = 9221, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10418] = {KnowledgeId = 9222, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10419] = {KnowledgeId = 9223, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10420] = {KnowledgeId = 9224, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10430] = {KnowledgeId = 7378, MainTheme = 31230}
g_KnowledgeTable_CharKey_Key[10432] = {KnowledgeId = 7358, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10434] = {KnowledgeId = 7360, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10435] = {KnowledgeId = 7361, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10436] = {KnowledgeId = 7362, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10437] = {KnowledgeId = 7363, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10453] = {KnowledgeId = 7379, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[10454] = {KnowledgeId = 7379, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[10465] = {KnowledgeId = 7301, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10474] = {KnowledgeId = 7837, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10476] = {KnowledgeId = 7838, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10478] = {KnowledgeId = 7839, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10480] = {KnowledgeId = 7836, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[10481] = {KnowledgeId = 7812, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10482] = {KnowledgeId = 7820, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10483] = {KnowledgeId = 7814, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10484] = {KnowledgeId = 7815, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10485] = {KnowledgeId = 7816, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10486] = {KnowledgeId = 7817, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10487] = {KnowledgeId = 7818, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10488] = {KnowledgeId = 7819, MainTheme = 30903}
g_KnowledgeTable_CharKey_Key[10489] = {KnowledgeId = 7820, MainTheme = 30902}
g_KnowledgeTable_CharKey_Key[10501] = {KnowledgeId = 7343, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10502] = {KnowledgeId = 7343, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10503] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10504] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10505] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10506] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10507] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10508] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10509] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10510] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10511] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10512] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10513] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10514] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10515] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10516] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10518] = {KnowledgeId = 7344, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10519] = {KnowledgeId = 7344, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10525] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10526] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10527] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10528] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10529] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10536] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10537] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10538] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10539] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10540] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10541] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10542] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10543] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10544] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10545] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10546] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10547] = {KnowledgeId = 7339, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10558] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10559] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10560] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10561] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10562] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10563] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10564] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10565] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10566] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10578] = {KnowledgeId = 7349, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10579] = {KnowledgeId = 7349, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10582] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10583] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10584] = {KnowledgeId = 7348, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10585] = {KnowledgeId = 7348, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10586] = {KnowledgeId = 7348, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10588] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10589] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10597] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10598] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10600] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10601] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10602] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10603] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10605] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10606] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10607] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10608] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10609] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10610] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10611] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10612] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10613] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10614] = {KnowledgeId = 7342, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10615] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10616] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10617] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10618] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10619] = {KnowledgeId = 7348, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10620] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10621] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10622] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10623] = {KnowledgeId = 7341, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10624] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10625] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10626] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10627] = {KnowledgeId = 7346, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10628] = {KnowledgeId = 7346, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10629] = {KnowledgeId = 7346, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10630] = {KnowledgeId = 7346, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10631] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10632] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10636] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10637] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10639] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10640] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10641] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10642] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10643] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10644] = {KnowledgeId = 7345, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10649] = {KnowledgeId = 9210, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10650] = {KnowledgeId = 9210, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10656] = {KnowledgeId = 7853, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10657] = {KnowledgeId = 7347, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10658] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10660] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10661] = {KnowledgeId = 9209, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10663] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[10664] = {KnowledgeId = 9210, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[10704] = {KnowledgeId = 7639, MainTheme = 31019}
g_KnowledgeTable_CharKey_Key[10809] = {KnowledgeId = 7629, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10810] = {KnowledgeId = 7630, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10811] = {KnowledgeId = 7631, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10812] = {KnowledgeId = 7632, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10817] = {KnowledgeId = 7633, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10818] = {KnowledgeId = 7634, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10819] = {KnowledgeId = 7635, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[10820] = {KnowledgeId = 7636, MainTheme = 31015}
g_KnowledgeTable_CharKey_Key[11901] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11902] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11903] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11904] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11905] = {KnowledgeId = 7337, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11906] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11907] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11908] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11909] = {KnowledgeId = 7338, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11910] = {KnowledgeId = 7963, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11911] = {KnowledgeId = 7963, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11912] = {KnowledgeId = 7963, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11913] = {KnowledgeId = 7963, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11914] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11915] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11916] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11917] = {KnowledgeId = 7340, MainTheme = 31210}
g_KnowledgeTable_CharKey_Key[11918] = {KnowledgeId = 7350, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11919] = {KnowledgeId = 7350, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11920] = {KnowledgeId = 7350, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11921] = {KnowledgeId = 7351, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11922] = {KnowledgeId = 7351, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11923] = {KnowledgeId = 7351, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11924] = {KnowledgeId = 7351, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11925] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11926] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11927] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11928] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11929] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11930] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11931] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11932] = {KnowledgeId = 7364, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11933] = {KnowledgeId = 7967, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11934] = {KnowledgeId = 7967, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11935] = {KnowledgeId = 7967, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11936] = {KnowledgeId = 7967, MainTheme = 31220}
g_KnowledgeTable_CharKey_Key[11939] = {KnowledgeId = 7302, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[11940] = {KnowledgeId = 7302, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[11941] = {KnowledgeId = 7303, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[11942] = {KnowledgeId = 7303, MainTheme = 31201}
g_KnowledgeTable_CharKey_Key[15001] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15002] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15003] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15004] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15005] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15006] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15007] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15008] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15009] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15010] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15011] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15012] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15013] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15014] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15015] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15016] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15017] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15018] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15019] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15020] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15021] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15022] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15023] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15024] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15025] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15026] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15027] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15028] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15029] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15030] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15031] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15032] = {KnowledgeId = 7183, MainTheme = 30002}
g_KnowledgeTable_CharKey_Key[15101] = {KnowledgeId = 7100, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15102] = {KnowledgeId = 7101, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15103] = {KnowledgeId = 7102, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15104] = {KnowledgeId = 7103, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15105] = {KnowledgeId = 7104, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15106] = {KnowledgeId = 7105, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15107] = {KnowledgeId = 7106, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15108] = {KnowledgeId = 7107, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15109] = {KnowledgeId = 7108, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15110] = {KnowledgeId = 7109, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15111] = {KnowledgeId = 7110, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15112] = {KnowledgeId = 7111, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15113] = {KnowledgeId = 7112, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15114] = {KnowledgeId = 7113, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15115] = {KnowledgeId = 7114, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15116] = {KnowledgeId = 7115, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15117] = {KnowledgeId = 7116, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15118] = {KnowledgeId = 7117, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15119] = {KnowledgeId = 7118, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15120] = {KnowledgeId = 7119, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15121] = {KnowledgeId = 7120, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15122] = {KnowledgeId = 7121, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15123] = {KnowledgeId = 7122, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15124] = {KnowledgeId = 7123, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15125] = {KnowledgeId = 7124, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15126] = {KnowledgeId = 7125, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15127] = {KnowledgeId = 7126, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15128] = {KnowledgeId = 7127, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15129] = {KnowledgeId = 7128, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15130] = {KnowledgeId = 7129, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15131] = {KnowledgeId = 7130, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15132] = {KnowledgeId = 7131, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15133] = {KnowledgeId = 7132, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15134] = {KnowledgeId = 7133, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15135] = {KnowledgeId = 7134, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15136] = {KnowledgeId = 7135, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15137] = {KnowledgeId = 7136, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15138] = {KnowledgeId = 7137, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15139] = {KnowledgeId = 7138, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15146] = {KnowledgeId = 7139, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15147] = {KnowledgeId = 7140, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15148] = {KnowledgeId = 7141, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15149] = {KnowledgeId = 7142, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15150] = {KnowledgeId = 7143, MainTheme = 31007}
g_KnowledgeTable_CharKey_Key[15668] = {KnowledgeId = 9314, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[15669] = {KnowledgeId = 9312, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[15670] = {KnowledgeId = 9313, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[16001] = {KnowledgeId = 9105, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[16002] = {KnowledgeId = 9106, MainTheme = 30503}
g_KnowledgeTable_CharKey_Key[16004] = {KnowledgeId = 9107, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[16005] = {KnowledgeId = 9108, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[16106] = {KnowledgeId = 7711, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16107] = {KnowledgeId = 7712, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16108] = {KnowledgeId = 7713, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16110] = {KnowledgeId = 7729, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16111] = {KnowledgeId = 7730, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16112] = {KnowledgeId = 7731, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16114] = {KnowledgeId = 7714, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16115] = {KnowledgeId = 7715, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16116] = {KnowledgeId = 7716, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16118] = {KnowledgeId = 7717, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16119] = {KnowledgeId = 7718, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16120] = {KnowledgeId = 7719, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16122] = {KnowledgeId = 7720, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16123] = {KnowledgeId = 7721, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16124] = {KnowledgeId = 7722, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16126] = {KnowledgeId = 7723, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16127] = {KnowledgeId = 7724, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16128] = {KnowledgeId = 7725, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16130] = {KnowledgeId = 7726, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16131] = {KnowledgeId = 7727, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16132] = {KnowledgeId = 7728, MainTheme = 31025}
g_KnowledgeTable_CharKey_Key[16142] = {KnowledgeId = 7735, MainTheme = 31035}
g_KnowledgeTable_CharKey_Key[16143] = {KnowledgeId = 6551, MainTheme = 25016}
g_KnowledgeTable_CharKey_Key[16144] = {KnowledgeId = 7667, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16147] = {KnowledgeId = 7665, MainTheme = 31024}
g_KnowledgeTable_CharKey_Key[16901] = {KnowledgeId = 7087, MainTheme = 30303}
g_KnowledgeTable_CharKey_Key[16902] = {KnowledgeId = 7088, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[16903] = {KnowledgeId = 7089, MainTheme = 30201}
g_KnowledgeTable_CharKey_Key[17572] = {KnowledgeId = 9359, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[17574] = {KnowledgeId = 9360, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[20001] = {KnowledgeId = 4001, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20002] = {KnowledgeId = 4002, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20003] = {KnowledgeId = 4003, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20004] = {KnowledgeId = 4004, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20005] = {KnowledgeId = 4005, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20006] = {KnowledgeId = 4006, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20007] = {KnowledgeId = 4007, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20008] = {KnowledgeId = 4008, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20009] = {KnowledgeId = 4009, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20010] = {KnowledgeId = 4010, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20011] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20012] = {KnowledgeId = 4012, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20013] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20014] = {KnowledgeId = 4014, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20015] = {KnowledgeId = 4015, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20016] = {KnowledgeId = 4016, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20017] = {KnowledgeId = 4017, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20018] = {KnowledgeId = 4018, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20019] = {KnowledgeId = 4019, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20020] = {KnowledgeId = 4020, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20021] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20022] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20023] = {KnowledgeId = 4002, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20024] = {KnowledgeId = 4008, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20025] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[20026] = {KnowledgeId = 4016, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20027] = {KnowledgeId = 4020, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[20028] = {KnowledgeId = 4150, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20035] = {KnowledgeId = 4023, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20037] = {KnowledgeId = 4154, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[20038] = {KnowledgeId = 4157, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[20039] = {KnowledgeId = 4155, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[20040] = {KnowledgeId = 4156, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[20041] = {KnowledgeId = 4025, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20042] = {KnowledgeId = 4026, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20043] = {KnowledgeId = 4027, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20044] = {KnowledgeId = 4028, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20045] = {KnowledgeId = 4029, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20046] = {KnowledgeId = 4030, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[20047] = {KnowledgeId = 4031, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20048] = {KnowledgeId = 4032, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20049] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20051] = {KnowledgeId = 4035, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20052] = {KnowledgeId = 4036, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20053] = {KnowledgeId = 4037, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20054] = {KnowledgeId = 4038, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20055] = {KnowledgeId = 4039, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20056] = {KnowledgeId = 4136, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20057] = {KnowledgeId = 4041, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20058] = {KnowledgeId = 4042, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20060] = {KnowledgeId = 4044, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20061] = {KnowledgeId = 4045, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20062] = {KnowledgeId = 4046, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20063] = {KnowledgeId = 4047, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20064] = {KnowledgeId = 4048, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20065] = {KnowledgeId = 4049, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20066] = {KnowledgeId = 4050, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20067] = {KnowledgeId = 4051, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20068] = {KnowledgeId = 4052, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20069] = {KnowledgeId = 4053, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20070] = {KnowledgeId = 4054, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20072] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20073] = {KnowledgeId = 4057, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[20074] = {KnowledgeId = 4058, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[20075] = {KnowledgeId = 4059, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[20076] = {KnowledgeId = 4060, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[20077] = {KnowledgeId = 4061, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[20078] = {KnowledgeId = 4176, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[20079] = {KnowledgeId = 4063, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20080] = {KnowledgeId = 4064, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20081] = {KnowledgeId = 4065, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20082] = {KnowledgeId = 4066, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20083] = {KnowledgeId = 4067, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20084] = {KnowledgeId = 4068, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20085] = {KnowledgeId = 4069, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20086] = {KnowledgeId = 4070, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20087] = {KnowledgeId = 4071, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20089] = {KnowledgeId = 4073, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20090] = {KnowledgeId = 4074, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20091] = {KnowledgeId = 4075, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20092] = {KnowledgeId = 4076, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20096] = {KnowledgeId = 4079, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[20097] = {KnowledgeId = 4080, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[20098] = {KnowledgeId = 4081, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[20099] = {KnowledgeId = 4082, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[20101] = {KnowledgeId = 4145, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20102] = {KnowledgeId = 4196, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20103] = {KnowledgeId = 4197, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20104] = {KnowledgeId = 4198, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20105] = {KnowledgeId = 4199, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20106] = {KnowledgeId = 4168, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20107] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20108] = {KnowledgeId = 4200, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20109] = {KnowledgeId = 4201, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20110] = {KnowledgeId = 4202, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20111] = {KnowledgeId = 4203, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20113] = {KnowledgeId = 4205, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20114] = {KnowledgeId = 4167, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20115] = {KnowledgeId = 4437, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20116] = {KnowledgeId = 4511, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20117] = {KnowledgeId = 4208, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20118] = {KnowledgeId = 4513, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20119] = {KnowledgeId = 4210, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20120] = {KnowledgeId = 4211, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20121] = {KnowledgeId = 4212, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20122] = {KnowledgeId = 4213, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20123] = {KnowledgeId = 4214, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20128] = {KnowledgeId = 4514, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20129] = {KnowledgeId = 4220, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20130] = {KnowledgeId = 4515, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20131] = {KnowledgeId = 4438, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20132] = {KnowledgeId = 4439, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20133] = {KnowledgeId = 4440, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20134] = {KnowledgeId = 4441, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20143] = {KnowledgeId = 4226, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20144] = {KnowledgeId = 4516, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20145] = {KnowledgeId = 4517, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20146] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20149] = {KnowledgeId = 4232, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20150] = {KnowledgeId = 4165, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20151] = {KnowledgeId = 4233, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20152] = {KnowledgeId = 4234, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20153] = {KnowledgeId = 4518, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20154] = {KnowledgeId = 4519, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20155] = {KnowledgeId = 4520, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20156] = {KnowledgeId = 4521, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20157] = {KnowledgeId = 4239, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20158] = {KnowledgeId = 4162, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20159] = {KnowledgeId = 4163, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20160] = {KnowledgeId = 4166, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20162] = {KnowledgeId = 4241, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20164] = {KnowledgeId = 4243, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20165] = {KnowledgeId = 4244, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20170] = {KnowledgeId = 4174, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20176] = {KnowledgeId = 4519, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20177] = {KnowledgeId = 4521, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20178] = {KnowledgeId = 4439, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20179] = {KnowledgeId = 4441, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20183] = {KnowledgeId = 4145, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20184] = {KnowledgeId = 4145, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20185] = {KnowledgeId = 4256, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20191] = {KnowledgeId = 4622, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20193] = {KnowledgeId = 4624, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20194] = {KnowledgeId = 4636, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20195] = {KnowledgeId = 4637, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20196] = {KnowledgeId = 4639, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20197] = {KnowledgeId = 4640, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20198] = {KnowledgeId = 4627, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20199] = {KnowledgeId = 4628, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20200] = {KnowledgeId = 4091, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20204] = {KnowledgeId = 4205, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20209] = {KnowledgeId = 4152, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[20210] = {KnowledgeId = 4254, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20212] = {KnowledgeId = 4084, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[20213] = {KnowledgeId = 4085, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[20214] = {KnowledgeId = 4086, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[20215] = {KnowledgeId = 4087, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[20216] = {KnowledgeId = 4088, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[20217] = {KnowledgeId = 4089, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[20218] = {KnowledgeId = 4090, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[20220] = {KnowledgeId = 4796, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20221] = {KnowledgeId = 4257, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20224] = {KnowledgeId = 4092, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20225] = {KnowledgeId = 4093, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20226] = {KnowledgeId = 4094, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20227] = {KnowledgeId = 4095, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20228] = {KnowledgeId = 4096, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20229] = {KnowledgeId = 4097, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20230] = {KnowledgeId = 4098, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20231] = {KnowledgeId = 4099, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20232] = {KnowledgeId = 4100, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20233] = {KnowledgeId = 4101, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20234] = {KnowledgeId = 4102, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20235] = {KnowledgeId = 4103, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[20236] = {KnowledgeId = 4034, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20237] = {KnowledgeId = 4105, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20238] = {KnowledgeId = 4106, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[20239] = {KnowledgeId = 4260, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20240] = {KnowledgeId = 4261, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20241] = {KnowledgeId = 4524, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20242] = {KnowledgeId = 4263, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20243] = {KnowledgeId = 4264, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20244] = {KnowledgeId = 4265, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20245] = {KnowledgeId = 4266, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20246] = {KnowledgeId = 4267, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20247] = {KnowledgeId = 4268, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20248] = {KnowledgeId = 4147, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[20249] = {KnowledgeId = 4158, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20250] = {KnowledgeId = 4148, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20255] = {KnowledgeId = 4273, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20256] = {KnowledgeId = 4099, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[20257] = {KnowledgeId = 4274, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20258] = {KnowledgeId = 4275, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20259] = {KnowledgeId = 4276, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[20260] = {KnowledgeId = 4277, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[20261] = {KnowledgeId = 4278, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[20262] = {KnowledgeId = 4279, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[20263] = {KnowledgeId = 4280, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[20266] = {KnowledgeId = 4162, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20267] = {KnowledgeId = 4163, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20268] = {KnowledgeId = 4283, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20275] = {KnowledgeId = 4210, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20276] = {KnowledgeId = 4211, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20277] = {KnowledgeId = 4212, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20278] = {KnowledgeId = 4241, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20281] = {KnowledgeId = 4286, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20282] = {KnowledgeId = 4287, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20283] = {KnowledgeId = 4528, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20286] = {KnowledgeId = 4529, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20287] = {KnowledgeId = 4292, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20288] = {KnowledgeId = 4293, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20289] = {KnowledgeId = 4294, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20290] = {KnowledgeId = 4295, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20291] = {KnowledgeId = 4167, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20292] = {KnowledgeId = 4388, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20293] = {KnowledgeId = 4297, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20294] = {KnowledgeId = 4298, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20297] = {KnowledgeId = 4629, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20304] = {KnowledgeId = 4145, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20305] = {KnowledgeId = 4149, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20306] = {KnowledgeId = 4146, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20310] = {KnowledgeId = 4193, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20311] = {KnowledgeId = 4307, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20312] = {KnowledgeId = 4308, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20316] = {KnowledgeId = 4312, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20317] = {KnowledgeId = 4313, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20319] = {KnowledgeId = 4168, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[20320] = {KnowledgeId = 4314, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20321] = {KnowledgeId = 4315, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20322] = {KnowledgeId = 4316, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20333] = {KnowledgeId = 4177, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20334] = {KnowledgeId = 4317, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20335] = {KnowledgeId = 4318, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20336] = {KnowledgeId = 4319, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20337] = {KnowledgeId = 4370, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20338] = {KnowledgeId = 4320, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20342] = {KnowledgeId = 4324, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20343] = {KnowledgeId = 4325, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20345] = {KnowledgeId = 4327, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20346] = {KnowledgeId = 4328, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20347] = {KnowledgeId = 4329, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20348] = {KnowledgeId = 4330, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20349] = {KnowledgeId = 4331, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20350] = {KnowledgeId = 4332, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20351] = {KnowledgeId = 4333, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20352] = {KnowledgeId = 4334, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20353] = {KnowledgeId = 4335, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20357] = {KnowledgeId = 4339, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20358] = {KnowledgeId = 4340, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20359] = {KnowledgeId = 4341, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20361] = {KnowledgeId = 4343, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20364] = {KnowledgeId = 4317, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20366] = {KnowledgeId = 4347, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20369] = {KnowledgeId = 4350, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20370] = {KnowledgeId = 4351, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20371] = {KnowledgeId = 4352, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20373] = {KnowledgeId = 4354, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20374] = {KnowledgeId = 4355, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20375] = {KnowledgeId = 4356, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20377] = {KnowledgeId = 4358, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20378] = {KnowledgeId = 4359, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20379] = {KnowledgeId = 4360, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20380] = {KnowledgeId = 4532, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20381] = {KnowledgeId = 4443, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20382] = {KnowledgeId = 4444, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20383] = {KnowledgeId = 4533, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20384] = {KnowledgeId = 4446, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20385] = {KnowledgeId = 4447, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20386] = {KnowledgeId = 4534, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20387] = {KnowledgeId = 4448, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20388] = {KnowledgeId = 4449, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20389] = {KnowledgeId = 4450, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20390] = {KnowledgeId = 4535, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20391] = {KnowledgeId = 4227, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20392] = {KnowledgeId = 4536, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20393] = {KnowledgeId = 4537, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20394] = {KnowledgeId = 4538, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20395] = {KnowledgeId = 4539, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20396] = {KnowledgeId = 4540, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20399] = {KnowledgeId = 4149, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[20400] = {KnowledgeId = 4361, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20401] = {KnowledgeId = 4362, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20402] = {KnowledgeId = 4363, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20403] = {KnowledgeId = 4390, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20404] = {KnowledgeId = 4391, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20405] = {KnowledgeId = 4366, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20406] = {KnowledgeId = 4367, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20409] = {KnowledgeId = 4392, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20410] = {KnowledgeId = 4393, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20412] = {KnowledgeId = 4394, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20413] = {KnowledgeId = 4395, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20415] = {KnowledgeId = 4397, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20416] = {KnowledgeId = 4398, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[20417] = {KnowledgeId = 4544, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20419] = {KnowledgeId = 4451, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[20420] = {KnowledgeId = 4452, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[20426] = {KnowledgeId = 4545, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[20427] = {KnowledgeId = 4454, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20434] = {KnowledgeId = 4455, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20435] = {KnowledgeId = 4549, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20436] = {KnowledgeId = 4206, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20440] = {KnowledgeId = 4552, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20442] = {KnowledgeId = 4674, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20443] = {KnowledgeId = 4672, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20457] = {KnowledgeId = 4561, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20469] = {KnowledgeId = 4262, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20470] = {KnowledgeId = 4571, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[20471] = {KnowledgeId = 4572, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20476] = {KnowledgeId = 4400, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20477] = {KnowledgeId = 4401, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20478] = {KnowledgeId = 4414, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20484] = {KnowledgeId = 4456, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20485] = {KnowledgeId = 4457, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20486] = {KnowledgeId = 4458, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20487] = {KnowledgeId = 4459, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20490] = {KnowledgeId = 4574, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20492] = {KnowledgeId = 4349, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[20494] = {KnowledgeId = 4460, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20495] = {KnowledgeId = 4856, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[20497] = {KnowledgeId = 4575, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[20498] = {KnowledgeId = 4462, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20499] = {KnowledgeId = 4463, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20500] = {KnowledgeId = 4464, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20501] = {KnowledgeId = 4465, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20503] = {KnowledgeId = 4467, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20504] = {KnowledgeId = 4296, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20505] = {KnowledgeId = 4576, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20506] = {KnowledgeId = 4468, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20507] = {KnowledgeId = 4469, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[20509] = {KnowledgeId = 4470, MainTheme = 10321}
g_KnowledgeTable_CharKey_Key[20510] = {KnowledgeId = 4471, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[20513] = {KnowledgeId = 4577, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20514] = {KnowledgeId = 4578, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20515] = {KnowledgeId = 4579, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20516] = {KnowledgeId = 4580, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[20517] = {KnowledgeId = 4581, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20518] = {KnowledgeId = 4582, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20519] = {KnowledgeId = 4631, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20520] = {KnowledgeId = 4632, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[20521] = {KnowledgeId = 4633, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20522] = {KnowledgeId = 4167, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20523] = {KnowledgeId = 4296, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20524] = {KnowledgeId = 4400, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20525] = {KnowledgeId = 4401, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20526] = {KnowledgeId = 4576, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[20531] = {KnowledgeId = 4201, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20532] = {KnowledgeId = 4234, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20551] = {KnowledgeId = 4660, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20552] = {KnowledgeId = 4165, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20553] = {KnowledgeId = 4166, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[20554] = {KnowledgeId = 4641, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20555] = {KnowledgeId = 4642, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20556] = {KnowledgeId = 4643, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20557] = {KnowledgeId = 4644, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20558] = {KnowledgeId = 4645, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20559] = {KnowledgeId = 4646, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20560] = {KnowledgeId = 4647, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20561] = {KnowledgeId = 4648, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20562] = {KnowledgeId = 4649, MainTheme = 31250}
g_KnowledgeTable_CharKey_Key[20563] = {KnowledgeId = 4650, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[20564] = {KnowledgeId = 4651, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[20567] = {KnowledgeId = 4359, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20568] = {KnowledgeId = 4360, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20569] = {KnowledgeId = 4359, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20570] = {KnowledgeId = 4360, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20571] = {KnowledgeId = 4627, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20572] = {KnowledgeId = 4628, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[20573] = {KnowledgeId = 4462, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20574] = {KnowledgeId = 4463, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20575] = {KnowledgeId = 4464, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20576] = {KnowledgeId = 4465, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[20583] = {KnowledgeId = 4783, MainTheme = 10322}
g_KnowledgeTable_CharKey_Key[20584] = {KnowledgeId = 4786, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20585] = {KnowledgeId = 4787, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20586] = {KnowledgeId = 4788, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20587] = {KnowledgeId = 4789, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20588] = {KnowledgeId = 4813, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20589] = {KnowledgeId = 4814, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20590] = {KnowledgeId = 4815, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20591] = {KnowledgeId = 4816, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20592] = {KnowledgeId = 4797, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20593] = {KnowledgeId = 4798, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20594] = {KnowledgeId = 4799, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20595] = {KnowledgeId = 4800, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20596] = {KnowledgeId = 4801, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20597] = {KnowledgeId = 4802, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20598] = {KnowledgeId = 4817, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[20599] = {KnowledgeId = 4397, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[20600] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[20601] = {KnowledgeId = 4663, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20602] = {KnowledgeId = 4664, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20614] = {KnowledgeId = 4672, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20615] = {KnowledgeId = 4551, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20616] = {KnowledgeId = 4552, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20617] = {KnowledgeId = 4756, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20618] = {KnowledgeId = 4673, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20620] = {KnowledgeId = 4553, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20621] = {KnowledgeId = 4554, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20623] = {KnowledgeId = 4555, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20624] = {KnowledgeId = 4556, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20625] = {KnowledgeId = 4557, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20626] = {KnowledgeId = 4558, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20627] = {KnowledgeId = 4696, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20631] = {KnowledgeId = 4697, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20632] = {KnowledgeId = 4560, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20633] = {KnowledgeId = 4709, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20634] = {KnowledgeId = 4563, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20638] = {KnowledgeId = 4567, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20639] = {KnowledgeId = 4568, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20640] = {KnowledgeId = 4569, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20641] = {KnowledgeId = 4570, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20644] = {KnowledgeId = 4572, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20645] = {KnowledgeId = 4674, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20646] = {KnowledgeId = 4573, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20647] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20648] = {KnowledgeId = 4675, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20649] = {KnowledgeId = 4676, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20650] = {KnowledgeId = 4677, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20651] = {KnowledgeId = 4665, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20652] = {KnowledgeId = 4666, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20653] = {KnowledgeId = 4667, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20656] = {KnowledgeId = 4460, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[20658] = {KnowledgeId = 4668, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20659] = {KnowledgeId = 4839, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[20660] = {KnowledgeId = 4840, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[20661] = {KnowledgeId = 4682, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20662] = {KnowledgeId = 4683, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20663] = {KnowledgeId = 4684, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20664] = {KnowledgeId = 4685, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20665] = {KnowledgeId = 4686, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20666] = {KnowledgeId = 4687, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20667] = {KnowledgeId = 4688, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20669] = {KnowledgeId = 4757, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20671] = {KnowledgeId = 4708, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20672] = {KnowledgeId = 4712, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20673] = {KnowledgeId = 4713, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20674] = {KnowledgeId = 4714, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20675] = {KnowledgeId = 4723, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20676] = {KnowledgeId = 4698, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20678] = {KnowledgeId = 4699, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20679] = {KnowledgeId = 4700, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20680] = {KnowledgeId = 4701, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20681] = {KnowledgeId = 4702, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20682] = {KnowledgeId = 4703, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20683] = {KnowledgeId = 4704, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20684] = {KnowledgeId = 4203, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20685] = {KnowledgeId = 4727, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20686] = {KnowledgeId = 4728, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20687] = {KnowledgeId = 4729, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20688] = {KnowledgeId = 4706, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20689] = {KnowledgeId = 4718, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20690] = {KnowledgeId = 4719, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20691] = {KnowledgeId = 4720, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20693] = {KnowledgeId = 4721, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20695] = {KnowledgeId = 4722, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20696] = {KnowledgeId = 4724, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20697] = {KnowledgeId = 4725, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20698] = {KnowledgeId = 4726, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20699] = {KnowledgeId = 4710, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20700] = {KnowledgeId = 4711, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[20702] = {KnowledgeId = 4690, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20704] = {KnowledgeId = 4734, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20705] = {KnowledgeId = 4735, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[20706] = {KnowledgeId = 4736, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20707] = {KnowledgeId = 4737, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20708] = {KnowledgeId = 4738, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20709] = {KnowledgeId = 4739, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20710] = {KnowledgeId = 4740, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20711] = {KnowledgeId = 4741, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20712] = {KnowledgeId = 4742, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20717] = {KnowledgeId = 4747, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[20718] = {KnowledgeId = 4748, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20723] = {KnowledgeId = 4758, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[20724] = {KnowledgeId = 4759, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20726] = {KnowledgeId = 4697, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20727] = {KnowledgeId = 4757, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20728] = {KnowledgeId = 4749, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20730] = {KnowledgeId = 4790, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20731] = {KnowledgeId = 4794, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20733] = {KnowledgeId = 4750, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[20734] = {KnowledgeId = 4791, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20735] = {KnowledgeId = 4791, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20736] = {KnowledgeId = 4791, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[20740] = {KnowledgeId = 4807, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20741] = {KnowledgeId = 4806, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20742] = {KnowledgeId = 4809, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20743] = {KnowledgeId = 4808, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20744] = {KnowledgeId = 4811, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20745] = {KnowledgeId = 4810, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[20746] = {KnowledgeId = 4803, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20747] = {KnowledgeId = 4804, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20748] = {KnowledgeId = 4805, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20749] = {KnowledgeId = 4812, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[20750] = {KnowledgeId = 4307, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[20751] = {KnowledgeId = 4972, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[20753] = {KnowledgeId = 4971, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[20754] = {KnowledgeId = 4973, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[20763] = {KnowledgeId = 5060, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20764] = {KnowledgeId = 5061, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[20765] = {KnowledgeId = 5062, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[21001] = {KnowledgeId = 4821, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21002] = {KnowledgeId = 4822, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21003] = {KnowledgeId = 4827, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21004] = {KnowledgeId = 4823, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21005] = {KnowledgeId = 4824, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21006] = {KnowledgeId = 4825, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21007] = {KnowledgeId = 4826, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21008] = {KnowledgeId = 4828, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21009] = {KnowledgeId = 4829, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21010] = {KnowledgeId = 4820, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[21035] = {KnowledgeId = 4830, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[21036] = {KnowledgeId = 4831, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[21037] = {KnowledgeId = 4832, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[21038] = {KnowledgeId = 4833, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[21039] = {KnowledgeId = 4834, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[21040] = {KnowledgeId = 4835, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21051] = {KnowledgeId = 4836, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[21052] = {KnowledgeId = 4837, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[21056] = {KnowledgeId = 4838, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[21071] = {KnowledgeId = 4839, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[21072] = {KnowledgeId = 4840, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[21073] = {KnowledgeId = 4841, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[21074] = {KnowledgeId = 5058, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[21091] = {KnowledgeId = 4842, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[21092] = {KnowledgeId = 4843, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[21093] = {KnowledgeId = 4844, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[21095] = {KnowledgeId = 4845, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[21107] = {KnowledgeId = 4846, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21110] = {KnowledgeId = 4847, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21111] = {KnowledgeId = 4848, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21113] = {KnowledgeId = 4849, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21114] = {KnowledgeId = 4890, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21128] = {KnowledgeId = 4850, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21132] = {KnowledgeId = 4851, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21135] = {KnowledgeId = 4852, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21147] = {KnowledgeId = 4853, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[21148] = {KnowledgeId = 4854, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[21151] = {KnowledgeId = 4855, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[21152] = {KnowledgeId = 4891, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21187] = {KnowledgeId = 4892, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21188] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[21189] = {KnowledgeId = 4389, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[21207] = {KnowledgeId = 4893, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21209] = {KnowledgeId = 4856, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21210] = {KnowledgeId = 4894, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21211] = {KnowledgeId = 4858, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21212] = {KnowledgeId = 4859, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21213] = {KnowledgeId = 4860, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21214] = {KnowledgeId = 4861, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[21216] = {KnowledgeId = 4862, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[21217] = {KnowledgeId = 4863, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[21218] = {KnowledgeId = 4895, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21219] = {KnowledgeId = 4864, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[21220] = {KnowledgeId = 4896, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21221] = {KnowledgeId = 4897, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21222] = {KnowledgeId = 4898, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21223] = {KnowledgeId = 4899, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21224] = {KnowledgeId = 4900, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21225] = {KnowledgeId = 4901, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21226] = {KnowledgeId = 4902, MainTheme = 10520}
g_KnowledgeTable_CharKey_Key[21228] = {KnowledgeId = 4903, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21229] = {KnowledgeId = 4904, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21230] = {KnowledgeId = 4905, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21231] = {KnowledgeId = 4906, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21232] = {KnowledgeId = 4907, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21233] = {KnowledgeId = 4908, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21234] = {KnowledgeId = 4909, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21235] = {KnowledgeId = 4910, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21236] = {KnowledgeId = 4857, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21237] = {KnowledgeId = 4911, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21238] = {KnowledgeId = 4912, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21239] = {KnowledgeId = 4913, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21240] = {KnowledgeId = 4914, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21244] = {KnowledgeId = 4915, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21245] = {KnowledgeId = 4916, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21263] = {KnowledgeId = 4964, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[21264] = {KnowledgeId = 4963, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[21265] = {KnowledgeId = 4965, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21266] = {KnowledgeId = 4962, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[21267] = {KnowledgeId = 4851, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21268] = {KnowledgeId = 4850, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21269] = {KnowledgeId = 4852, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[21270] = {KnowledgeId = 4975, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[21271] = {KnowledgeId = 4976, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[21301] = {KnowledgeId = 4921, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21302] = {KnowledgeId = 4922, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21303] = {KnowledgeId = 4923, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21304] = {KnowledgeId = 4924, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21305] = {KnowledgeId = 4925, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21306] = {KnowledgeId = 4926, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21307] = {KnowledgeId = 4927, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21311] = {KnowledgeId = 4940, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21312] = {KnowledgeId = 4941, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21313] = {KnowledgeId = 4942, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21315] = {KnowledgeId = 4943, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21316] = {KnowledgeId = 4944, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21317] = {KnowledgeId = 4945, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[21321] = {KnowledgeId = 4930, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21322] = {KnowledgeId = 4931, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21323] = {KnowledgeId = 4932, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21324] = {KnowledgeId = 4898, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21325] = {KnowledgeId = 4934, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21326] = {KnowledgeId = 4935, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21327] = {KnowledgeId = 4936, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21328] = {KnowledgeId = 4937, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[21331] = {KnowledgeId = 4949, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21332] = {KnowledgeId = 4950, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21333] = {KnowledgeId = 4951, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21334] = {KnowledgeId = 4952, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21335] = {KnowledgeId = 4953, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21336] = {KnowledgeId = 4954, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[21341] = {KnowledgeId = 4958, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21342] = {KnowledgeId = 4959, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21343] = {KnowledgeId = 4960, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21344] = {KnowledgeId = 4961, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21401] = {KnowledgeId = 4966, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21402] = {KnowledgeId = 4967, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21403] = {KnowledgeId = 4968, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21404] = {KnowledgeId = 4969, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21405] = {KnowledgeId = 4970, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21407] = {KnowledgeId = 4966, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21408] = {KnowledgeId = 4967, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21409] = {KnowledgeId = 4968, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21410] = {KnowledgeId = 4969, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21411] = {KnowledgeId = 4970, MainTheme = 10524}
g_KnowledgeTable_CharKey_Key[21501] = {KnowledgeId = 4977, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21502] = {KnowledgeId = 4978, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21503] = {KnowledgeId = 4981, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21504] = {KnowledgeId = 4980, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21505] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21506] = {KnowledgeId = 5102, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21507] = {KnowledgeId = 5103, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21508] = {KnowledgeId = 5104, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21509] = {KnowledgeId = 5005, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21510] = {KnowledgeId = 5006, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21511] = {KnowledgeId = 4986, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[21512] = {KnowledgeId = 4987, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[21513] = {KnowledgeId = 4988, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[21514] = {KnowledgeId = 4989, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[21515] = {KnowledgeId = 4990, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[21517] = {KnowledgeId = 5007, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21518] = {KnowledgeId = 5008, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21519] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[21520] = {KnowledgeId = 5009, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21521] = {KnowledgeId = 4994, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21522] = {KnowledgeId = 4995, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21523] = {KnowledgeId = 4996, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21524] = {KnowledgeId = 4997, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21525] = {KnowledgeId = 4998, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21526] = {KnowledgeId = 4999, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21527] = {KnowledgeId = 5000, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21528] = {KnowledgeId = 5001, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21529] = {KnowledgeId = 5003, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21530] = {KnowledgeId = 5002, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[21533] = {KnowledgeId = 5013, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21534] = {KnowledgeId = 5014, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21535] = {KnowledgeId = 5015, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21536] = {KnowledgeId = 5016, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21537] = {KnowledgeId = 5017, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21538] = {KnowledgeId = 5018, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21539] = {KnowledgeId = 4150, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[21540] = {KnowledgeId = 4148, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[21541] = {KnowledgeId = 5019, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21542] = {KnowledgeId = 5020, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21543] = {KnowledgeId = 5021, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21544] = {KnowledgeId = 4046, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[21545] = {KnowledgeId = 4047, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[21546] = {KnowledgeId = 4048, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[21547] = {KnowledgeId = 5022, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21549] = {KnowledgeId = 4392, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[21550] = {KnowledgeId = 5024, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21551] = {KnowledgeId = 5025, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21552] = {KnowledgeId = 4149, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[21553] = {KnowledgeId = 4835, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[21554] = {KnowledgeId = 5026, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21555] = {KnowledgeId = 5027, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21556] = {KnowledgeId = 4293, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[21557] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[21558] = {KnowledgeId = 5028, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21559] = {KnowledgeId = 5029, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21560] = {KnowledgeId = 5030, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21561] = {KnowledgeId = 5031, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21562] = {KnowledgeId = 5032, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21564] = {KnowledgeId = 5033, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21565] = {KnowledgeId = 5034, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21566] = {KnowledgeId = 5035, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21567] = {KnowledgeId = 5036, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21568] = {KnowledgeId = 5037, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21569] = {KnowledgeId = 5038, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21570] = {KnowledgeId = 5039, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21571] = {KnowledgeId = 5040, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21572] = {KnowledgeId = 5041, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21573] = {KnowledgeId = 5042, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21574] = {KnowledgeId = 5043, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21578] = {KnowledgeId = 5045, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21579] = {KnowledgeId = 5046, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21580] = {KnowledgeId = 5047, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21581] = {KnowledgeId = 5048, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21582] = {KnowledgeId = 5049, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21583] = {KnowledgeId = 5050, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21584] = {KnowledgeId = 5051, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21585] = {KnowledgeId = 5052, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21586] = {KnowledgeId = 5053, MainTheme = 10603}
g_KnowledgeTable_CharKey_Key[21601] = {KnowledgeId = 5078, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21602] = {KnowledgeId = 5079, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21604] = {KnowledgeId = 5080, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21605] = {KnowledgeId = 5081, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21606] = {KnowledgeId = 5082, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21620] = {KnowledgeId = 5086, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[21621] = {KnowledgeId = 5074, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[21622] = {KnowledgeId = 5075, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[21623] = {KnowledgeId = 5073, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[21624] = {KnowledgeId = 5072, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[21625] = {KnowledgeId = 5071, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[21651] = {KnowledgeId = 5087, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[21652] = {KnowledgeId = 5088, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[21653] = {KnowledgeId = 5089, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[21654] = {KnowledgeId = 5090, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[21661] = {KnowledgeId = 5063, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[21662] = {KnowledgeId = 5064, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[21663] = {KnowledgeId = 5065, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[21664] = {KnowledgeId = 5066, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[21671] = {KnowledgeId = 5068, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21672] = {KnowledgeId = 5070, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21673] = {KnowledgeId = 5067, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21674] = {KnowledgeId = 5069, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21701] = {KnowledgeId = 5105, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21702] = {KnowledgeId = 5106, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21703] = {KnowledgeId = 5107, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21704] = {KnowledgeId = 5108, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21705] = {KnowledgeId = 5109, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21706] = {KnowledgeId = 5110, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21707] = {KnowledgeId = 5149, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21708] = {KnowledgeId = 5150, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[21711] = {KnowledgeId = 5114, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21712] = {KnowledgeId = 5115, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21713] = {KnowledgeId = 5116, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21714] = {KnowledgeId = 5117, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21715] = {KnowledgeId = 5118, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21716] = {KnowledgeId = 5114, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21717] = {KnowledgeId = 5115, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21718] = {KnowledgeId = 5116, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21719] = {KnowledgeId = 5117, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21720] = {KnowledgeId = 5118, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[21721] = {KnowledgeId = 5119, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21722] = {KnowledgeId = 5120, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21723] = {KnowledgeId = 5121, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21724] = {KnowledgeId = 5122, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21725] = {KnowledgeId = 5123, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21726] = {KnowledgeId = 5124, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21727] = {KnowledgeId = 5125, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21728] = {KnowledgeId = 5126, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21729] = {KnowledgeId = 5148, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21750] = {KnowledgeId = 5127, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21751] = {KnowledgeId = 5128, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21753] = {KnowledgeId = 5130, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21754] = {KnowledgeId = 5131, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21755] = {KnowledgeId = 5132, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21756] = {KnowledgeId = 5133, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21757] = {KnowledgeId = 5134, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21758] = {KnowledgeId = 5135, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21759] = {KnowledgeId = 5136, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21760] = {KnowledgeId = 5137, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21761] = {KnowledgeId = 5138, MainTheme = 10615}
g_KnowledgeTable_CharKey_Key[21762] = {KnowledgeId = 5139, MainTheme = 10615}
g_KnowledgeTable_CharKey_Key[21765] = {KnowledgeId = 5140, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21767] = {KnowledgeId = 5141, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21768] = {KnowledgeId = 5146, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21769] = {KnowledgeId = 5005, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21770] = {KnowledgeId = 5006, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[21772] = {KnowledgeId = 5151, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21773] = {KnowledgeId = 5152, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21774] = {KnowledgeId = 5153, MainTheme = 10611}
g_KnowledgeTable_CharKey_Key[21783] = {KnowledgeId = 5148, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[21801] = {KnowledgeId = 4232, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[21802] = {KnowledgeId = 4472, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[22001] = {KnowledgeId = 4001, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[22002] = {KnowledgeId = 4005, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[22003] = {KnowledgeId = 4014, MainTheme = 10101}
g_KnowledgeTable_CharKey_Key[22004] = {KnowledgeId = 4017, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[22005] = {KnowledgeId = 4038, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[22007] = {KnowledgeId = 4046, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[22009] = {KnowledgeId = 4097, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22010] = {KnowledgeId = 4058, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[22011] = {KnowledgeId = 4060, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[22012] = {KnowledgeId = 4170, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22013] = {KnowledgeId = 4037, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[22014] = {KnowledgeId = 4047, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[22015] = {KnowledgeId = 4093, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22016] = {KnowledgeId = 4096, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22017] = {KnowledgeId = 4059, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[22018] = {KnowledgeId = 4065, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22019] = {KnowledgeId = 4412, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22020] = {KnowledgeId = 4056, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[22021] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[22022] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22023] = {KnowledgeId = 4102, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22024] = {KnowledgeId = 4087, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[22025] = {KnowledgeId = 4064, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22026] = {KnowledgeId = 4100, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22027] = {KnowledgeId = 4010, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[22028] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[22029] = {KnowledgeId = 4032, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[22030] = {KnowledgeId = 4033, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22031] = {KnowledgeId = 4067, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22032] = {KnowledgeId = 4068, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22033] = {KnowledgeId = 4069, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22034] = {KnowledgeId = 4070, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22035] = {KnowledgeId = 4102, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[22036] = {KnowledgeId = 4084, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[22037] = {KnowledgeId = 4085, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[22038] = {KnowledgeId = 4086, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[22039] = {KnowledgeId = 4063, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22040] = {KnowledgeId = 4064, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22041] = {KnowledgeId = 4065, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22042] = {KnowledgeId = 4066, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22043] = {KnowledgeId = 4092, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22044] = {KnowledgeId = 4093, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22045] = {KnowledgeId = 4095, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22046] = {KnowledgeId = 4096, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22047] = {KnowledgeId = 4097, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[22048] = {KnowledgeId = 4164, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[22049] = {KnowledgeId = 4171, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22050] = {KnowledgeId = 4172, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22051] = {KnowledgeId = 4173, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[22052] = {KnowledgeId = 4168, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[22054] = {KnowledgeId = 4572, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[22055] = {KnowledgeId = 4203, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[22056] = {KnowledgeId = 4436, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[22057] = {KnowledgeId = 4276, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[22058] = {KnowledgeId = 4277, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[22059] = {KnowledgeId = 4278, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[22060] = {KnowledgeId = 4279, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[22061] = {KnowledgeId = 4162, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[22063] = {KnowledgeId = 4064, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[22064] = {KnowledgeId = 4054, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[22065] = {KnowledgeId = 4279, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[22066] = {KnowledgeId = 4318, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[22067] = {KnowledgeId = 4350, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[22068] = {KnowledgeId = 4367, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[22069] = {KnowledgeId = 4312, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[22070] = {KnowledgeId = 4633, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[22071] = {KnowledgeId = 4581, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[22072] = {KnowledgeId = 4199, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[22073] = {KnowledgeId = 4244, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[22074] = {KnowledgeId = 4517, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[22075] = {KnowledgeId = 4351, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[22076] = {KnowledgeId = 4524, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[22077] = {KnowledgeId = 4394, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[22078] = {KnowledgeId = 4636, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[22079] = {KnowledgeId = 4579, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[22080] = {KnowledgeId = 4726, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[22081] = {KnowledgeId = 4753, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[22082] = {KnowledgeId = 4751, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[22083] = {KnowledgeId = 4752, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[22084] = {KnowledgeId = 4557, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[22085] = {KnowledgeId = 4843, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[22086] = {KnowledgeId = 4974, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[22087] = {KnowledgeId = 4974, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[22088] = {KnowledgeId = 5000, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[22089] = {KnowledgeId = 4994, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[22090] = {KnowledgeId = 4996, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[22091] = {KnowledgeId = 4998, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[22092] = {KnowledgeId = 4997, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[23001] = {KnowledgeId = 4082, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[23002] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23003] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23004] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23005] = {KnowledgeId = 4109, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23006] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23007] = {KnowledgeId = 4472, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[23009] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23011] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23012] = {KnowledgeId = 4374, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23015] = {KnowledgeId = 4662, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23017] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23018] = {KnowledgeId = 4283, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23019] = {KnowledgeId = 4474, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[23020] = {KnowledgeId = 4318, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[23023] = {KnowledgeId = 4475, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23027] = {KnowledgeId = 4634, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23032] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23035] = {KnowledgeId = 4678, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23040] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23041] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23042] = {KnowledgeId = 4785, MainTheme = 10322}
g_KnowledgeTable_CharKey_Key[23043] = {KnowledgeId = 4784, MainTheme = 10322}
g_KnowledgeTable_CharKey_Key[23054] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23055] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23056] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23058] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23059] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23060] = {KnowledgeId = 4370, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23061] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23062] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23067] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23069] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23070] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23073] = {KnowledgeId = 4389, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23074] = {KnowledgeId = 4964, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[23075] = {KnowledgeId = 4962, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[23076] = {KnowledgeId = 4965, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[23077] = {KnowledgeId = 4963, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[23083] = {KnowledgeId = 5012, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23086] = {KnowledgeId = 5004, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23097] = {KnowledgeId = 5057, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23102] = {KnowledgeId = 5056, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23120] = {KnowledgeId = 5154, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23127] = {KnowledgeId = 5105, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23128] = {KnowledgeId = 5106, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23129] = {KnowledgeId = 5107, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23130] = {KnowledgeId = 5154, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23131] = {KnowledgeId = 5154, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23141] = {KnowledgeId = 5105, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23142] = {KnowledgeId = 5106, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23143] = {KnowledgeId = 5107, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23144] = {KnowledgeId = 5155, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23501] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23502] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23503] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23504] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23505] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23506] = {KnowledgeId = 4475, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23507] = {KnowledgeId = 4662, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23508] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23509] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23510] = {KnowledgeId = 4634, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23511] = {KnowledgeId = 4109, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23512] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23513] = {KnowledgeId = 4283, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23514] = {KnowledgeId = 4427, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23515] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23516] = {KnowledgeId = 4513, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23518] = {KnowledgeId = 4575, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23520] = {KnowledgeId = 4782, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23523] = {KnowledgeId = 4918, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23530] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23531] = {KnowledgeId = 4389, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23532] = {KnowledgeId = 4919, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23533] = {KnowledgeId = 5004, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23544] = {KnowledgeId = 5147, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23545] = {KnowledgeId = 5138, MainTheme = 10615}
g_KnowledgeTable_CharKey_Key[23546] = {KnowledgeId = 5147, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23552] = {KnowledgeId = 5154, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23553] = {KnowledgeId = 5154, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23554] = {KnowledgeId = 5116, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[23555] = {KnowledgeId = 5114, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[23556] = {KnowledgeId = 5115, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[23557] = {KnowledgeId = 5117, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[23558] = {KnowledgeId = 5118, MainTheme = 10613}
g_KnowledgeTable_CharKey_Key[23559] = {KnowledgeId = 5005, MainTheme = 10602}
g_KnowledgeTable_CharKey_Key[23560] = {KnowledgeId = 5138, MainTheme = 10615}
g_KnowledgeTable_CharKey_Key[23562] = {KnowledgeId = 5891, MainTheme = 20081}
g_KnowledgeTable_CharKey_Key[23563] = {KnowledgeId = 5110, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[23701] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23702] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23703] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23704] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23705] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23706] = {KnowledgeId = 4475, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23707] = {KnowledgeId = 4662, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23708] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23709] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23710] = {KnowledgeId = 4634, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23711] = {KnowledgeId = 4109, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23712] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23713] = {KnowledgeId = 4283, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23714] = {KnowledgeId = 4427, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23715] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23716] = {KnowledgeId = 4513, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23718] = {KnowledgeId = 4575, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23719] = {KnowledgeId = 4370, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23722] = {KnowledgeId = 4918, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23728] = {KnowledgeId = 4374, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23729] = {KnowledgeId = 4918, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23730] = {KnowledgeId = 4918, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23731] = {KnowledgeId = 4918, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23732] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23733] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23734] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23735] = {KnowledgeId = 4110, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23736] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23737] = {KnowledgeId = 4389, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23738] = {KnowledgeId = 4919, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23739] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23740] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23741] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23742] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23743] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23744] = {KnowledgeId = 4634, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23745] = {KnowledgeId = 4374, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23746] = {KnowledgeId = 4919, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23747] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23748] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23749] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23750] = {KnowledgeId = 5004, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23751] = {KnowledgeId = 5054, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23752] = {KnowledgeId = 5012, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23754] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23761] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23762] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23764] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23765] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23766] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23767] = {KnowledgeId = 5059, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23769] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23776] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23777] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23778] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23780] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23781] = {KnowledgeId = 5054, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23782] = {KnowledgeId = 5054, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23783] = {KnowledgeId = 5100, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23784] = {KnowledgeId = 5101, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23786] = {KnowledgeId = 5004, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23787] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[23788] = {KnowledgeId = 5012, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23789] = {KnowledgeId = 5100, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23790] = {KnowledgeId = 5101, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23792] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23793] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23794] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23795] = {KnowledgeId = 5145, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23797] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23798] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23799] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23800] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23801] = {KnowledgeId = 190, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[23802] = {KnowledgeId = 4059, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[23803] = {KnowledgeId = 4058, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[23805] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23806] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23807] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23808] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23809] = {KnowledgeId = 5059, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23810] = {KnowledgeId = 5059, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23812] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23819] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23820] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23821] = {KnowledgeId = 5055, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23827] = {KnowledgeId = 5012, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23828] = {KnowledgeId = 5012, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23829] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23832] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23833] = {KnowledgeId = 5147, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23901] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23902] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23903] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23904] = {KnowledgeId = 4475, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23905] = {KnowledgeId = 4662, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23906] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23907] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23908] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23909] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23910] = {KnowledgeId = 4022, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23911] = {KnowledgeId = 4108, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23912] = {KnowledgeId = 4634, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23926] = {KnowledgeId = 4082, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[23927] = {KnowledgeId = 4920, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23928] = {KnowledgeId = 4370, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23929] = {KnowledgeId = 4389, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23930] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23931] = {KnowledgeId = 4475, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23932] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23933] = {KnowledgeId = 4575, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[23934] = {KnowledgeId = 4056, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[23935] = {KnowledgeId = 5057, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[24001] = {KnowledgeId = 4112, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[24002] = {KnowledgeId = 4113, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[24003] = {KnowledgeId = 4123, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[24005] = {KnowledgeId = 4115, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[24006] = {KnowledgeId = 4116, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[24008] = {KnowledgeId = 4118, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24009] = {KnowledgeId = 4480, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24010] = {KnowledgeId = 4481, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24011] = {KnowledgeId = 4865, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[24012] = {KnowledgeId = 4866, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[24013] = {KnowledgeId = 4482, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[24014] = {KnowledgeId = 4483, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[24015] = {KnowledgeId = 4424, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24016] = {KnowledgeId = 4484, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[24017] = {KnowledgeId = 4485, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[24018] = {KnowledgeId = 4486, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[24019] = {KnowledgeId = 4584, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[24021] = {KnowledgeId = 4406, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24022] = {KnowledgeId = 4407, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24024] = {KnowledgeId = 4178, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24025] = {KnowledgeId = 4179, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24026] = {KnowledgeId = 4180, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24027] = {KnowledgeId = 4181, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24030] = {KnowledgeId = 4417, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[24031] = {KnowledgeId = 4429, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24032] = {KnowledgeId = 4430, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24033] = {KnowledgeId = 4431, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24034] = {KnowledgeId = 4418, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[24039] = {KnowledgeId = 4487, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[24042] = {KnowledgeId = 4587, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24044] = {KnowledgeId = 4488, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[24045] = {KnowledgeId = 4489, MainTheme = 10308}
g_KnowledgeTable_CharKey_Key[24046] = {KnowledgeId = 4588, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24051] = {KnowledgeId = 4119, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[24052] = {KnowledgeId = 4112, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[24053] = {KnowledgeId = 4120, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[24054] = {KnowledgeId = 4121, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[24055] = {KnowledgeId = 4122, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[24056] = {KnowledgeId = 4114, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[24057] = {KnowledgeId = 4124, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[24058] = {KnowledgeId = 4125, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[24059] = {KnowledgeId = 4117, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[24060] = {KnowledgeId = 4182, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[24061] = {KnowledgeId = 4127, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[24062] = {KnowledgeId = 4128, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[24063] = {KnowledgeId = 4182, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[24065] = {KnowledgeId = 4129, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24066] = {KnowledgeId = 4130, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[24067] = {KnowledgeId = 4593, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24068] = {KnowledgeId = 4594, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24069] = {KnowledgeId = 4133, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[24070] = {KnowledgeId = 4490, MainTheme = 10311}
g_KnowledgeTable_CharKey_Key[24073] = {KnowledgeId = 4491, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24074] = {KnowledgeId = 4492, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24075] = {KnowledgeId = 4493, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[24076] = {KnowledgeId = 4494, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[24077] = {KnowledgeId = 4867, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[24082] = {KnowledgeId = 4425, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24083] = {KnowledgeId = 4760, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[24085] = {KnowledgeId = 4596, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[24086] = {KnowledgeId = 4597, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[24087] = {KnowledgeId = 4598, MainTheme = 10306}
g_KnowledgeTable_CharKey_Key[24088] = {KnowledgeId = 4495, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24090] = {KnowledgeId = 4434, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24093] = {KnowledgeId = 4408, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24094] = {KnowledgeId = 4409, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24095] = {KnowledgeId = 4410, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24096] = {KnowledgeId = 4762, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[24097] = {KnowledgeId = 4153, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[24098] = {KnowledgeId = 4183, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[24099] = {KnowledgeId = 4184, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[24100] = {KnowledgeId = 4185, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24101] = {KnowledgeId = 4134, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[24102] = {KnowledgeId = 4135, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[24103] = {KnowledgeId = 4126, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[24105] = {KnowledgeId = 4137, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[24106] = {KnowledgeId = 4138, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[24107] = {KnowledgeId = 4139, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[24108] = {KnowledgeId = 4140, MainTheme = 10211}
g_KnowledgeTable_CharKey_Key[24109] = {KnowledgeId = 4141, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24110] = {KnowledgeId = 4142, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24111] = {KnowledgeId = 4143, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24112] = {KnowledgeId = 4151, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[24113] = {KnowledgeId = 4144, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[24114] = {KnowledgeId = 4496, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[24116] = {KnowledgeId = 4416, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24120] = {KnowledgeId = 4405, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[24121] = {KnowledgeId = 4040, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[24122] = {KnowledgeId = 4764, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[24123] = {KnowledgeId = 4186, MainTheme = 10216}
g_KnowledgeTable_CharKey_Key[24124] = {KnowledgeId = 4427, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[24125] = {KnowledgeId = 4419, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[24126] = {KnowledgeId = 4420, MainTheme = 10319}
g_KnowledgeTable_CharKey_Key[24127] = {KnowledgeId = 4379, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[24128] = {KnowledgeId = 4635, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[24129] = {KnowledgeId = 4498, MainTheme = 10312}
g_KnowledgeTable_CharKey_Key[24130] = {KnowledgeId = 4499, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[24131] = {KnowledgeId = 4500, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[24132] = {KnowledgeId = 4501, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[24134] = {KnowledgeId = 4502, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[24137] = {KnowledgeId = 4603, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[24138] = {KnowledgeId = 4504, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[24139] = {KnowledgeId = 4765, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24144] = {KnowledgeId = 4604, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[24145] = {KnowledgeId = 4605, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[24146] = {KnowledgeId = 4606, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[24148] = {KnowledgeId = 4669, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24149] = {KnowledgeId = 4670, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24150] = {KnowledgeId = 4671, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24151] = {KnowledgeId = 4691, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24152] = {KnowledgeId = 4692, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24153] = {KnowledgeId = 4695, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[24201] = {KnowledgeId = 4608, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[24202] = {KnowledgeId = 6088, MainTheme = 20204}
g_KnowledgeTable_CharKey_Key[24203] = {KnowledgeId = 4442, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24204] = {KnowledgeId = 4421, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24205] = {KnowledgeId = 4422, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[24207] = {KnowledgeId = 4610, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[24208] = {KnowledgeId = 4505, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24209] = {KnowledgeId = 4506, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[24210] = {KnowledgeId = 4693, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24213] = {KnowledgeId = 4766, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[24214] = {KnowledgeId = 4715, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24215] = {KnowledgeId = 4716, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24216] = {KnowledgeId = 4868, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[24218] = {KnowledgeId = 4869, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[24219] = {KnowledgeId = 4870, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[24220] = {KnowledgeId = 4871, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[24221] = {KnowledgeId = 4917, MainTheme = 10512}
g_KnowledgeTable_CharKey_Key[24222] = {KnowledgeId = 4872, MainTheme = 10513}
g_KnowledgeTable_CharKey_Key[24223] = {KnowledgeId = 4730, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[24224] = {KnowledgeId = 4731, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[24225] = {KnowledgeId = 4873, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[24226] = {KnowledgeId = 4874, MainTheme = 10517}
g_KnowledgeTable_CharKey_Key[24227] = {KnowledgeId = 4732, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24228] = {KnowledgeId = 4717, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24229] = {KnowledgeId = 4679, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[24230] = {KnowledgeId = 4680, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[24231] = {KnowledgeId = 4681, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[24232] = {KnowledgeId = 4767, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24233] = {KnowledgeId = 4768, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24234] = {KnowledgeId = 4654, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[24235] = {KnowledgeId = 4655, MainTheme = 10318}
g_KnowledgeTable_CharKey_Key[24236] = {KnowledgeId = 4656, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[24237] = {KnowledgeId = 4657, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[24238] = {KnowledgeId = 4658, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[24239] = {KnowledgeId = 4659, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[24240] = {KnowledgeId = 4769, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24241] = {KnowledgeId = 4781, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24242] = {KnowledgeId = 4779, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24243] = {KnowledgeId = 4780, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24244] = {KnowledgeId = 4770, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[24245] = {KnowledgeId = 4771, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[24246] = {KnowledgeId = 4772, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[24247] = {KnowledgeId = 4773, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[24248] = {KnowledgeId = 4774, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[24249] = {KnowledgeId = 4775, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[24250] = {KnowledgeId = 4776, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[24251] = {KnowledgeId = 4777, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[24252] = {KnowledgeId = 4778, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[24253] = {KnowledgeId = 4795, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[24254] = {KnowledgeId = 4818, MainTheme = 10509}
g_KnowledgeTable_CharKey_Key[24255] = {KnowledgeId = 4819, MainTheme = 10106}
g_KnowledgeTable_CharKey_Key[24256] = {KnowledgeId = 4875, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[24257] = {KnowledgeId = 4876, MainTheme = 10511}
g_KnowledgeTable_CharKey_Key[24259] = {KnowledgeId = 4877, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[24260] = {KnowledgeId = 4878, MainTheme = 10518}
g_KnowledgeTable_CharKey_Key[24261] = {KnowledgeId = 4879, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[24262] = {KnowledgeId = 4880, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[24263] = {KnowledgeId = 4881, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[24264] = {KnowledgeId = 4882, MainTheme = 10519}
g_KnowledgeTable_CharKey_Key[24266] = {KnowledgeId = 4883, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24267] = {KnowledgeId = 4884, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24268] = {KnowledgeId = 4885, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24269] = {KnowledgeId = 4886, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24270] = {KnowledgeId = 4887, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24271] = {KnowledgeId = 4888, MainTheme = 10516}
g_KnowledgeTable_CharKey_Key[24272] = {KnowledgeId = 4889, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[24274] = {KnowledgeId = 4938, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[24275] = {KnowledgeId = 4939, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[24276] = {KnowledgeId = 4955, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[24277] = {KnowledgeId = 4956, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[24278] = {KnowledgeId = 4957, MainTheme = 10523}
g_KnowledgeTable_CharKey_Key[24279] = {KnowledgeId = 4928, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[24280] = {KnowledgeId = 4929, MainTheme = 10521}
g_KnowledgeTable_CharKey_Key[24281] = {KnowledgeId = 4946, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[24282] = {KnowledgeId = 4947, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[24283] = {KnowledgeId = 4948, MainTheme = 10522}
g_KnowledgeTable_CharKey_Key[24298] = {KnowledgeId = 4991, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[24299] = {KnowledgeId = 4992, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[24300] = {KnowledgeId = 4993, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[24301] = {KnowledgeId = 4982, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[24302] = {KnowledgeId = 4983, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[24303] = {KnowledgeId = 4984, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[24304] = {KnowledgeId = 4985, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[24305] = {KnowledgeId = 4144, MainTheme = 10213}
g_KnowledgeTable_CharKey_Key[24306] = {KnowledgeId = 4773, MainTheme = 10501}
g_KnowledgeTable_CharKey_Key[24307] = {KnowledgeId = 5085, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[24308] = {KnowledgeId = 5083, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[24309] = {KnowledgeId = 5084, MainTheme = 10608}
g_KnowledgeTable_CharKey_Key[24310] = {KnowledgeId = 5076, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[24312] = {KnowledgeId = 5077, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[24313] = {KnowledgeId = 5093, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[24314] = {KnowledgeId = 5094, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[24316] = {KnowledgeId = 5091, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[24318] = {KnowledgeId = 5092, MainTheme = 10607}
g_KnowledgeTable_CharKey_Key[24319] = {KnowledgeId = 4767, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24320] = {KnowledgeId = 4768, MainTheme = 10504}
g_KnowledgeTable_CharKey_Key[24321] = {KnowledgeId = 5111, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[24322] = {KnowledgeId = 5112, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[24323] = {KnowledgeId = 5113, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[24324] = {KnowledgeId = 4717, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[24325] = {KnowledgeId = 5142, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[24326] = {KnowledgeId = 5143, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[24327] = {KnowledgeId = 5144, MainTheme = 10614}
g_KnowledgeTable_CharKey_Key[24335] = {KnowledgeId = 5111, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[24336] = {KnowledgeId = 5113, MainTheme = 10612}
g_KnowledgeTable_CharKey_Key[25002] = {KnowledgeId = 4188, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[25003] = {KnowledgeId = 4189, MainTheme = 10219}
g_KnowledgeTable_CharKey_Key[25004] = {KnowledgeId = 4507, MainTheme = 10214}
g_KnowledgeTable_CharKey_Key[25006] = {KnowledgeId = 4508, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[25009] = {KnowledgeId = 4192, MainTheme = 10215}
g_KnowledgeTable_CharKey_Key[25010] = {KnowledgeId = 4612, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[25013] = {KnowledgeId = 4403, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[25015] = {KnowledgeId = 4404, MainTheme = 10304}
g_KnowledgeTable_CharKey_Key[25016] = {KnowledgeId = 4435, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[25018] = {KnowledgeId = 4191, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[25019] = {KnowledgeId = 4379, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[25020] = {KnowledgeId = 4432, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[25021] = {KnowledgeId = 4509, MainTheme = 10309}
g_KnowledgeTable_CharKey_Key[25022] = {KnowledgeId = 4402, MainTheme = 10315}
g_KnowledgeTable_CharKey_Key[25024] = {KnowledgeId = 4426, MainTheme = 10305}
g_KnowledgeTable_CharKey_Key[25030] = {KnowledgeId = 4620, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[25031] = {KnowledgeId = 4621, MainTheme = 10105}
g_KnowledgeTable_CharKey_Key[25037] = {KnowledgeId = 4638, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[25070] = {KnowledgeId = 4774, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[25074] = {KnowledgeId = 4889, MainTheme = 10515}
g_KnowledgeTable_CharKey_Key[25075] = {KnowledgeId = 5010, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[25076] = {KnowledgeId = 5010, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[25077] = {KnowledgeId = 5010, MainTheme = 10601}
g_KnowledgeTable_CharKey_Key[25082] = {KnowledgeId = 5011, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[25083] = {KnowledgeId = 5011, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[25084] = {KnowledgeId = 5011, MainTheme = 10604}
g_KnowledgeTable_CharKey_Key[25096] = {KnowledgeId = 5096, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[25097] = {KnowledgeId = 5097, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[25098] = {KnowledgeId = 5098, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[25099] = {KnowledgeId = 5099, MainTheme = 10606}
g_KnowledgeTable_CharKey_Key[25102] = {KnowledgeId = 5095, MainTheme = 10610}
g_KnowledgeTable_CharKey_Key[26007] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26008] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26009] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26010] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26011] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26012] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26013] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[26166] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[26167] = {KnowledgeId = 4021, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[26168] = {KnowledgeId = 4104, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[26169] = {KnowledgeId = 4107, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[26170] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[26316] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27015] = {KnowledgeId = 4060, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[27016] = {KnowledgeId = 4061, MainTheme = 10222}
g_KnowledgeTable_CharKey_Key[27017] = {KnowledgeId = 4624, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[27018] = {KnowledgeId = 4636, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[27019] = {KnowledgeId = 4637, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[27020] = {KnowledgeId = 4639, MainTheme = 10314}
g_KnowledgeTable_CharKey_Key[27021] = {KnowledgeId = 4093, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27022] = {KnowledgeId = 4094, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27023] = {KnowledgeId = 4095, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27024] = {KnowledgeId = 4096, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27025] = {KnowledgeId = 4193, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27026] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27027] = {KnowledgeId = 4226, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27028] = {KnowledgeId = 4516, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27029] = {KnowledgeId = 4517, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27030] = {KnowledgeId = 4535, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27031] = {KnowledgeId = 4227, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27032] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27034] = {KnowledgeId = 4439, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27035] = {KnowledgeId = 4440, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27036] = {KnowledgeId = 4441, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27039] = {KnowledgeId = 4520, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27040] = {KnowledgeId = 4521, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27041] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27042] = {KnowledgeId = 4557, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[27043] = {KnowledgeId = 4560, MainTheme = 10508}
g_KnowledgeTable_CharKey_Key[27046] = {KnowledgeId = 4554, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[27047] = {KnowledgeId = 4556, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[27048] = {KnowledgeId = 4683, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[27049] = {KnowledgeId = 4684, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[27050] = {KnowledgeId = 4688, MainTheme = 10502}
g_KnowledgeTable_CharKey_Key[27052] = {KnowledgeId = 4712, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[27053] = {KnowledgeId = 4713, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[27054] = {KnowledgeId = 4714, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[27055] = {KnowledgeId = 4753, MainTheme = 10505}
g_KnowledgeTable_CharKey_Key[27057] = {KnowledgeId = 4563, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[27058] = {KnowledgeId = 4707, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[27059] = {KnowledgeId = 4708, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[27060] = {KnowledgeId = 4710, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[27061] = {KnowledgeId = 4711, MainTheme = 10506}
g_KnowledgeTable_CharKey_Key[27066] = {KnowledgeId = 4905, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[27067] = {KnowledgeId = 4906, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[27068] = {KnowledgeId = 4907, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[27069] = {KnowledgeId = 4908, MainTheme = 10510}
g_KnowledgeTable_CharKey_Key[27070] = {KnowledgeId = 4823, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[27071] = {KnowledgeId = 4824, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[27072] = {KnowledgeId = 4825, MainTheme = 10514}
g_KnowledgeTable_CharKey_Key[27073] = {KnowledgeId = 4627, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[27074] = {KnowledgeId = 4628, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[27075] = {KnowledgeId = 4534, MainTheme = 10302}
g_KnowledgeTable_CharKey_Key[27097] = {KnowledgeId = 4727, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[27098] = {KnowledgeId = 4728, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[27099] = {KnowledgeId = 4729, MainTheme = 10503}
g_KnowledgeTable_CharKey_Key[27100] = {KnowledgeId = 4414, MainTheme = 10317}
g_KnowledgeTable_CharKey_Key[27102] = {KnowledgeId = 4010, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[27103] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[27104] = {KnowledgeId = 4012, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[27105] = {KnowledgeId = 4019, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[27106] = {KnowledgeId = 4020, MainTheme = 10104}
g_KnowledgeTable_CharKey_Key[27107] = {KnowledgeId = 4013, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27108] = {KnowledgeId = 4718, MainTheme = 10507}
g_KnowledgeTable_CharKey_Key[27111] = {KnowledgeId = 4093, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27112] = {KnowledgeId = 4094, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27113] = {KnowledgeId = 4095, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27114] = {KnowledgeId = 4096, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27115] = {KnowledgeId = 4193, MainTheme = 10218}
g_KnowledgeTable_CharKey_Key[27116] = {KnowledgeId = 4111, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27117] = {KnowledgeId = 4226, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27118] = {KnowledgeId = 4516, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27119] = {KnowledgeId = 4517, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27120] = {KnowledgeId = 4535, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27121] = {KnowledgeId = 4227, MainTheme = 10316}
g_KnowledgeTable_CharKey_Key[27122] = {KnowledgeId = 4229, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27123] = {KnowledgeId = 4439, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27124] = {KnowledgeId = 4440, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27125] = {KnowledgeId = 4441, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27126] = {KnowledgeId = 4520, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27127] = {KnowledgeId = 4521, MainTheme = 10307}
g_KnowledgeTable_CharKey_Key[27128] = {KnowledgeId = 4371, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27141] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[27161] = {KnowledgeId = 5004, MainTheme = 10040}
g_KnowledgeTable_CharKey_Key[27162] = {KnowledgeId = 4979, MainTheme = 10605}
g_KnowledgeTable_CharKey_Key[35011] = {KnowledgeId = 4195, MainTheme = 10217}
g_KnowledgeTable_CharKey_Key[35021] = {KnowledgeId = 4194, MainTheme = 10220}
g_KnowledgeTable_CharKey_Key[35405] = {KnowledgeId = 4012, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[35433] = {KnowledgeId = 4360, MainTheme = 10313}
g_KnowledgeTable_CharKey_Key[40001] = {KnowledgeId = 1, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40002] = {KnowledgeId = 2, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40003] = {KnowledgeId = 3, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40004] = {KnowledgeId = 4, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40005] = {KnowledgeId = 5, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40006] = {KnowledgeId = 6, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40007] = {KnowledgeId = 7, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40008] = {KnowledgeId = 8, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40009] = {KnowledgeId = 9, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40010] = {KnowledgeId = 10, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40011] = {KnowledgeId = 11, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40012] = {KnowledgeId = 12, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40013] = {KnowledgeId = 14, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40014] = {KnowledgeId = 15, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40015] = {KnowledgeId = 16, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[40016] = {KnowledgeId = 17, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40017] = {KnowledgeId = 18, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40018] = {KnowledgeId = 20, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40019] = {KnowledgeId = 21, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40020] = {KnowledgeId = 22, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40021] = {KnowledgeId = 23, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40022] = {KnowledgeId = 24, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40023] = {KnowledgeId = 25, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40024] = {KnowledgeId = 26, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40025] = {KnowledgeId = 27, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40026] = {KnowledgeId = 28, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40027] = {KnowledgeId = 29, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40028] = {KnowledgeId = 30, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40029] = {KnowledgeId = 31, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40030] = {KnowledgeId = 32, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40031] = {KnowledgeId = 33, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40032] = {KnowledgeId = 34, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40033] = {KnowledgeId = 35, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40034] = {KnowledgeId = 60, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40035] = {KnowledgeId = 37, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40036] = {KnowledgeId = 38, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40037] = {KnowledgeId = 179, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40038] = {KnowledgeId = 180, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40039] = {KnowledgeId = 39, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40040] = {KnowledgeId = 40, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40041] = {KnowledgeId = 41, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[40042] = {KnowledgeId = 42, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40043] = {KnowledgeId = 43, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40044] = {KnowledgeId = 183, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40045] = {KnowledgeId = 61, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40046] = {KnowledgeId = 225, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40047] = {KnowledgeId = 44, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40048] = {KnowledgeId = 403, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40063] = {KnowledgeId = 45, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40064] = {KnowledgeId = 46, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40065] = {KnowledgeId = 47, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40066] = {KnowledgeId = 48, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40067] = {KnowledgeId = 49, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40068] = {KnowledgeId = 670, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[40070] = {KnowledgeId = 54, MainTheme = 102}
g_KnowledgeTable_CharKey_Key[40071] = {KnowledgeId = 392, MainTheme = 131}
g_KnowledgeTable_CharKey_Key[40072] = {KnowledgeId = 393, MainTheme = 131}
g_KnowledgeTable_CharKey_Key[40073] = {KnowledgeId = 75, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[40074] = {KnowledgeId = 74, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[40101] = {KnowledgeId = 55, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40128] = {KnowledgeId = 56, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40129] = {KnowledgeId = 57, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40133] = {KnowledgeId = 58, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40134] = {KnowledgeId = 59, MainTheme = 104}
g_KnowledgeTable_CharKey_Key[40135] = {KnowledgeId = 76, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40136] = {KnowledgeId = 77, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40137] = {KnowledgeId = 78, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40138] = {KnowledgeId = 79, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40139] = {KnowledgeId = 80, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[40140] = {KnowledgeId = 57, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40142] = {KnowledgeId = 15, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40144] = {KnowledgeId = 1017, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[40145] = {KnowledgeId = 1082, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[40446] = {KnowledgeId = 6407, MainTheme = 20511}
g_KnowledgeTable_CharKey_Key[40601] = {KnowledgeId = 386, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40602] = {KnowledgeId = 387, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40603] = {KnowledgeId = 391, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40604] = {KnowledgeId = 388, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40605] = {KnowledgeId = 389, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40606] = {KnowledgeId = 390, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40607] = {KnowledgeId = 813, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40608] = {KnowledgeId = 485, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40609] = {KnowledgeId = 486, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40610] = {KnowledgeId = 550, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40611] = {KnowledgeId = 849, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40612] = {KnowledgeId = 846, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40613] = {KnowledgeId = 847, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40614] = {KnowledgeId = 848, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[40701] = {KnowledgeId = 731, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40702] = {KnowledgeId = 732, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40703] = {KnowledgeId = 9, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[40704] = {KnowledgeId = 386, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40705] = {KnowledgeId = 391, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40706] = {KnowledgeId = 733, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40707] = {KnowledgeId = 734, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40708] = {KnowledgeId = 735, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40709] = {KnowledgeId = 736, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40710] = {KnowledgeId = 737, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40711] = {KnowledgeId = 738, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40712] = {KnowledgeId = 739, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40713] = {KnowledgeId = 740, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40714] = {KnowledgeId = 741, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40715] = {KnowledgeId = 742, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40716] = {KnowledgeId = 743, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40717] = {KnowledgeId = 744, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40718] = {KnowledgeId = 745, MainTheme = 141}
g_KnowledgeTable_CharKey_Key[40719] = {KnowledgeId = 746, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[40720] = {KnowledgeId = 747, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40721] = {KnowledgeId = 748, MainTheme = 142}
g_KnowledgeTable_CharKey_Key[40724] = {KnowledgeId = 18, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[40726] = {KnowledgeId = 1018, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[40732] = {KnowledgeId = 1083, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[40733] = {KnowledgeId = 1096, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[40734] = {KnowledgeId = 1097, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[40735] = {KnowledgeId = 1225, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[41001] = {KnowledgeId = 101, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41002] = {KnowledgeId = 102, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41003] = {KnowledgeId = 103, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41004] = {KnowledgeId = 104, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41005] = {KnowledgeId = 105, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41006] = {KnowledgeId = 106, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41007] = {KnowledgeId = 107, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41008] = {KnowledgeId = 108, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41009] = {KnowledgeId = 109, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41010] = {KnowledgeId = 188, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41011] = {KnowledgeId = 111, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41012] = {KnowledgeId = 112, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41013] = {KnowledgeId = 113, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41014] = {KnowledgeId = 114, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41015] = {KnowledgeId = 115, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41016] = {KnowledgeId = 116, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41017] = {KnowledgeId = 117, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41018] = {KnowledgeId = 118, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41019] = {KnowledgeId = 119, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41020] = {KnowledgeId = 120, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41021] = {KnowledgeId = 121, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41022] = {KnowledgeId = 122, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41023] = {KnowledgeId = 123, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41024] = {KnowledgeId = 124, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41025] = {KnowledgeId = 125, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41026] = {KnowledgeId = 814, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[41027] = {KnowledgeId = 127, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41028] = {KnowledgeId = 128, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41029] = {KnowledgeId = 129, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41030] = {KnowledgeId = 130, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41031] = {KnowledgeId = 131, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41032] = {KnowledgeId = 132, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41033] = {KnowledgeId = 133, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41034] = {KnowledgeId = 134, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41035] = {KnowledgeId = 135, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41036] = {KnowledgeId = 136, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41037] = {KnowledgeId = 137, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41038] = {KnowledgeId = 138, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41039] = {KnowledgeId = 139, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41040] = {KnowledgeId = 140, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41041] = {KnowledgeId = 141, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41042] = {KnowledgeId = 142, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41043] = {KnowledgeId = 143, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41044] = {KnowledgeId = 144, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41045] = {KnowledgeId = 145, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41046] = {KnowledgeId = 146, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41047] = {KnowledgeId = 189, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41048] = {KnowledgeId = 674, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[41050] = {KnowledgeId = 147, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41051] = {KnowledgeId = 148, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41053] = {KnowledgeId = 182, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41056] = {KnowledgeId = 496, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41072] = {KnowledgeId = 181, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41073] = {KnowledgeId = 190, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41074] = {KnowledgeId = 150, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41075] = {KnowledgeId = 151, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41076] = {KnowledgeId = 152, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41077] = {KnowledgeId = 153, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41078] = {KnowledgeId = 154, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41079] = {KnowledgeId = 155, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41080] = {KnowledgeId = 156, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41081] = {KnowledgeId = 157, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41082] = {KnowledgeId = 158, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41083] = {KnowledgeId = 159, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41084] = {KnowledgeId = 160, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41085] = {KnowledgeId = 161, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41086] = {KnowledgeId = 162, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[41087] = {KnowledgeId = 163, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41088] = {KnowledgeId = 164, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[41090] = {KnowledgeId = 165, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41091] = {KnowledgeId = 166, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41092] = {KnowledgeId = 167, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41093] = {KnowledgeId = 168, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41094] = {KnowledgeId = 169, MainTheme = 121}
g_KnowledgeTable_CharKey_Key[41095] = {KnowledgeId = 170, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41096] = {KnowledgeId = 171, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41097] = {KnowledgeId = 172, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41098] = {KnowledgeId = 173, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41099] = {KnowledgeId = 174, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41100] = {KnowledgeId = 175, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41101] = {KnowledgeId = 176, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41102] = {KnowledgeId = 177, MainTheme = 115}
g_KnowledgeTable_CharKey_Key[41103] = {KnowledgeId = 394, MainTheme = 131}
g_KnowledgeTable_CharKey_Key[41104] = {KnowledgeId = 395, MainTheme = 131}
g_KnowledgeTable_CharKey_Key[41107] = {KnowledgeId = 187, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[41111] = {KnowledgeId = 178, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41112] = {KnowledgeId = 404, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41118] = {KnowledgeId = 110, MainTheme = 111}
g_KnowledgeTable_CharKey_Key[41119] = {KnowledgeId = 149, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[41120] = {KnowledgeId = 126, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[41121] = {KnowledgeId = 811, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41123] = {KnowledgeId = 1019, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[41221] = {KnowledgeId = 406, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41222] = {KnowledgeId = 407, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41223] = {KnowledgeId = 408, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41224] = {KnowledgeId = 409, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41225] = {KnowledgeId = 410, MainTheme = 114}
g_KnowledgeTable_CharKey_Key[41229] = {KnowledgeId = 226, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41230] = {KnowledgeId = 227, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41231] = {KnowledgeId = 228, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41232] = {KnowledgeId = 229, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41233] = {KnowledgeId = 230, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[41236] = {KnowledgeId = 811, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41237] = {KnowledgeId = 179, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[41238] = {KnowledgeId = 1029, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[41241] = {KnowledgeId = 951, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[41242] = {KnowledgeId = 954, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[41243] = {KnowledgeId = 955, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[41244] = {KnowledgeId = 956, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[42001] = {KnowledgeId = 341, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42002] = {KnowledgeId = 342, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42003] = {KnowledgeId = 343, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42004] = {KnowledgeId = 344, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42005] = {KnowledgeId = 345, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42006] = {KnowledgeId = 346, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42007] = {KnowledgeId = 347, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42008] = {KnowledgeId = 348, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42009] = {KnowledgeId = 349, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42011] = {KnowledgeId = 472, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42012] = {KnowledgeId = 352, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42013] = {KnowledgeId = 353, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42014] = {KnowledgeId = 354, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42015] = {KnowledgeId = 675, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[42016] = {KnowledgeId = 356, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42017] = {KnowledgeId = 357, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42018] = {KnowledgeId = 358, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42019] = {KnowledgeId = 359, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42020] = {KnowledgeId = 360, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42021] = {KnowledgeId = 361, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42022] = {KnowledgeId = 351, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42023] = {KnowledgeId = 399, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42024] = {KnowledgeId = 400, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42026] = {KnowledgeId = 397, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42027] = {KnowledgeId = 473, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42028] = {KnowledgeId = 474, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42029] = {KnowledgeId = 475, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42030] = {KnowledgeId = 476, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42031] = {KnowledgeId = 477, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42032] = {KnowledgeId = 478, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42033] = {KnowledgeId = 479, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42034] = {KnowledgeId = 482, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[42035] = {KnowledgeId = 483, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[42036] = {KnowledgeId = 484, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42101] = {KnowledgeId = 362, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42102] = {KnowledgeId = 363, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42103] = {KnowledgeId = 523, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42104] = {KnowledgeId = 402, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42105] = {KnowledgeId = 364, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[42106] = {KnowledgeId = 365, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42107] = {KnowledgeId = 488, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42108] = {KnowledgeId = 366, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42109] = {KnowledgeId = 367, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42110] = {KnowledgeId = 368, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42111] = {KnowledgeId = 369, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42112] = {KnowledgeId = 370, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42113] = {KnowledgeId = 371, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[42114] = {KnowledgeId = 372, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42115] = {KnowledgeId = 373, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42116] = {KnowledgeId = 374, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[42117] = {KnowledgeId = 375, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[42118] = {KnowledgeId = 376, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42119] = {KnowledgeId = 377, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42120] = {KnowledgeId = 378, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42121] = {KnowledgeId = 471, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42124] = {KnowledgeId = 379, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42125] = {KnowledgeId = 497, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42132] = {KnowledgeId = 1138, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42134] = {KnowledgeId = 493, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42135] = {KnowledgeId = 494, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42137] = {KnowledgeId = 380, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42138] = {KnowledgeId = 381, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[42140] = {KnowledgeId = 495, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[42141] = {KnowledgeId = 382, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[42151] = {KnowledgeId = 383, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[42152] = {KnowledgeId = 384, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42153] = {KnowledgeId = 385, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42166] = {KnowledgeId = 350, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[42167] = {KnowledgeId = 396, MainTheme = 131}
g_KnowledgeTable_CharKey_Key[42168] = {KnowledgeId = 569, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42169] = {KnowledgeId = 570, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42170] = {KnowledgeId = 571, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42171] = {KnowledgeId = 572, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42172] = {KnowledgeId = 573, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42173] = {KnowledgeId = 401, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[42174] = {KnowledgeId = 574, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42175] = {KnowledgeId = 575, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42177] = {KnowledgeId = 1020, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[42178] = {KnowledgeId = 1084, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[42201] = {KnowledgeId = 334, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42202] = {KnowledgeId = 335, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42203] = {KnowledgeId = 336, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42204] = {KnowledgeId = 337, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42205] = {KnowledgeId = 338, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42208] = {KnowledgeId = 339, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42209] = {KnowledgeId = 340, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42214] = {KnowledgeId = 333, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42215] = {KnowledgeId = 331, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42216] = {KnowledgeId = 332, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[42301] = {KnowledgeId = 463, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42302] = {KnowledgeId = 464, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42304] = {KnowledgeId = 465, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42306] = {KnowledgeId = 1025, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42307] = {KnowledgeId = 466, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42309] = {KnowledgeId = 467, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42310] = {KnowledgeId = 468, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[42311] = {KnowledgeId = 468, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[42312] = {KnowledgeId = 469, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42313] = {KnowledgeId = 816, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42314] = {KnowledgeId = 470, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42316] = {KnowledgeId = 576, MainTheme = 160}
g_KnowledgeTable_CharKey_Key[42317] = {KnowledgeId = 49, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[42318] = {KnowledgeId = 811, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[42319] = {KnowledgeId = 812, MainTheme = 20301}
g_KnowledgeTable_CharKey_Key[42320] = {KnowledgeId = 180, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[42321] = {KnowledgeId = 15, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[42322] = {KnowledgeId = 317, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42323] = {KnowledgeId = 157, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[42324] = {KnowledgeId = 15, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[42325] = {KnowledgeId = 317, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42326] = {KnowledgeId = 157, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[42327] = {KnowledgeId = 49, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[42328] = {KnowledgeId = 811, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[42329] = {KnowledgeId = 15, MainTheme = 101}
g_KnowledgeTable_CharKey_Key[42330] = {KnowledgeId = 317, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[42331] = {KnowledgeId = 157, MainTheme = 118}
g_KnowledgeTable_CharKey_Key[42332] = {KnowledgeId = 6263, MainTheme = 20307}
g_KnowledgeTable_CharKey_Key[42333] = {KnowledgeId = 6636, MainTheme = 10221}
g_KnowledgeTable_CharKey_Key[42334] = {KnowledgeId = 6331, MainTheme = 20403}
g_KnowledgeTable_CharKey_Key[42413] = {KnowledgeId = 9080, MainTheme = 31003}
g_KnowledgeTable_CharKey_Key[43001] = {KnowledgeId = 411, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43002] = {KnowledgeId = 412, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43003] = {KnowledgeId = 413, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43004] = {KnowledgeId = 414, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43005] = {KnowledgeId = 415, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43006] = {KnowledgeId = 416, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43007] = {KnowledgeId = 417, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43008] = {KnowledgeId = 418, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43009] = {KnowledgeId = 419, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43010] = {KnowledgeId = 420, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43012] = {KnowledgeId = 421, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43013] = {KnowledgeId = 422, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43014] = {KnowledgeId = 423, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43015] = {KnowledgeId = 424, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43016] = {KnowledgeId = 425, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43017] = {KnowledgeId = 426, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43019] = {KnowledgeId = 427, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43020] = {KnowledgeId = 428, MainTheme = 161}
g_KnowledgeTable_CharKey_Key[43021] = {KnowledgeId = 429, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43025] = {KnowledgeId = 430, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43202] = {KnowledgeId = 431, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43203] = {KnowledgeId = 432, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43204] = {KnowledgeId = 433, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43205] = {KnowledgeId = 434, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43207] = {KnowledgeId = 436, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43208] = {KnowledgeId = 437, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43209] = {KnowledgeId = 438, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43210] = {KnowledgeId = 439, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[43301] = {KnowledgeId = 441, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43302] = {KnowledgeId = 442, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43303] = {KnowledgeId = 443, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43304] = {KnowledgeId = 444, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43305] = {KnowledgeId = 445, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43309] = {KnowledgeId = 446, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43310] = {KnowledgeId = 447, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43311] = {KnowledgeId = 448, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43312] = {KnowledgeId = 449, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43313] = {KnowledgeId = 450, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43314] = {KnowledgeId = 451, MainTheme = 172}
g_KnowledgeTable_CharKey_Key[43401] = {KnowledgeId = 452, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43402] = {KnowledgeId = 453, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43404] = {KnowledgeId = 454, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43405] = {KnowledgeId = 458, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43407] = {KnowledgeId = 459, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43408] = {KnowledgeId = 460, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43409] = {KnowledgeId = 461, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43410] = {KnowledgeId = 462, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43411] = {KnowledgeId = 817, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43412] = {KnowledgeId = 455, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43413] = {KnowledgeId = 456, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43414] = {KnowledgeId = 457, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[43430] = {KnowledgeId = 301, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43431] = {KnowledgeId = 302, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43432] = {KnowledgeId = 303, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43433] = {KnowledgeId = 304, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43434] = {KnowledgeId = 305, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43435] = {KnowledgeId = 306, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43436] = {KnowledgeId = 307, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43437] = {KnowledgeId = 308, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[43438] = {KnowledgeId = 309, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43439] = {KnowledgeId = 310, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43440] = {KnowledgeId = 311, MainTheme = 151}
g_KnowledgeTable_CharKey_Key[43441] = {KnowledgeId = 312, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[43442] = {KnowledgeId = 313, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43443] = {KnowledgeId = 314, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43444] = {KnowledgeId = 315, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43445] = {KnowledgeId = 316, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[43446] = {KnowledgeId = 481, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43447] = {KnowledgeId = 318, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43448] = {KnowledgeId = 480, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43449] = {KnowledgeId = 320, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43450] = {KnowledgeId = 321, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43451] = {KnowledgeId = 319, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43452] = {KnowledgeId = 317, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[43501] = {KnowledgeId = 322, MainTheme = 171}
g_KnowledgeTable_CharKey_Key[43502] = {KnowledgeId = 323, MainTheme = 171}
g_KnowledgeTable_CharKey_Key[43503] = {KnowledgeId = 324, MainTheme = 171}
g_KnowledgeTable_CharKey_Key[43504] = {KnowledgeId = 325, MainTheme = 171}
g_KnowledgeTable_CharKey_Key[43505] = {KnowledgeId = 326, MainTheme = 171}
g_KnowledgeTable_CharKey_Key[43506] = {KnowledgeId = 327, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43507] = {KnowledgeId = 487, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43508] = {KnowledgeId = 329, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43509] = {KnowledgeId = 330, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43510] = {KnowledgeId = 328, MainTheme = 155}
g_KnowledgeTable_CharKey_Key[43511] = {KnowledgeId = 489, MainTheme = 157}
g_KnowledgeTable_CharKey_Key[43512] = {KnowledgeId = 490, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43513] = {KnowledgeId = 491, MainTheme = 162}
g_KnowledgeTable_CharKey_Key[43514] = {KnowledgeId = 492, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[44001] = {KnowledgeId = 579, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44002] = {KnowledgeId = 580, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44003] = {KnowledgeId = 581, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44004] = {KnowledgeId = 582, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44005] = {KnowledgeId = 583, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44006] = {KnowledgeId = 584, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44007] = {KnowledgeId = 585, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44008] = {KnowledgeId = 586, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44009] = {KnowledgeId = 587, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44010] = {KnowledgeId = 588, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44011] = {KnowledgeId = 589, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44012] = {KnowledgeId = 590, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44013] = {KnowledgeId = 591, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44014] = {KnowledgeId = 592, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44015] = {KnowledgeId = 593, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44016] = {KnowledgeId = 594, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44017] = {KnowledgeId = 595, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44018] = {KnowledgeId = 596, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44019] = {KnowledgeId = 597, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44020] = {KnowledgeId = 598, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44021] = {KnowledgeId = 599, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44022] = {KnowledgeId = 600, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44023] = {KnowledgeId = 601, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44024] = {KnowledgeId = 602, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44025] = {KnowledgeId = 603, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44028] = {KnowledgeId = 606, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44029] = {KnowledgeId = 607, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44030] = {KnowledgeId = 608, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44031] = {KnowledgeId = 609, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44032] = {KnowledgeId = 610, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44034] = {KnowledgeId = 1207, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44035] = {KnowledgeId = 613, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44036] = {KnowledgeId = 818, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44037] = {KnowledgeId = 819, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44038] = {KnowledgeId = 616, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[44040] = {KnowledgeId = 1021, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[44041] = {KnowledgeId = 1085, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[44101] = {KnowledgeId = 614, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44102] = {KnowledgeId = 615, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44103] = {KnowledgeId = 626, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44104] = {KnowledgeId = 617, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44106] = {KnowledgeId = 619, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44107] = {KnowledgeId = 620, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44108] = {KnowledgeId = 621, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44109] = {KnowledgeId = 622, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44110] = {KnowledgeId = 623, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44111] = {KnowledgeId = 624, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44112] = {KnowledgeId = 625, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44114] = {KnowledgeId = 627, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44115] = {KnowledgeId = 628, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44117] = {KnowledgeId = 630, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44118] = {KnowledgeId = 631, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44119] = {KnowledgeId = 632, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44123] = {KnowledgeId = 636, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44124] = {KnowledgeId = 637, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44125] = {KnowledgeId = 638, MainTheme = 184}
g_KnowledgeTable_CharKey_Key[44128] = {KnowledgeId = 826, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44135] = {KnowledgeId = 669, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44136] = {KnowledgeId = 49, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[44137] = {KnowledgeId = 180, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[44138] = {KnowledgeId = 604, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[44139] = {KnowledgeId = 605, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[44140] = {KnowledgeId = 1022, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[44141] = {KnowledgeId = 1199, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[44151] = {KnowledgeId = 1088, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44152] = {KnowledgeId = 1089, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44153] = {KnowledgeId = 1090, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44154] = {KnowledgeId = 1091, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44155] = {KnowledgeId = 1092, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44156] = {KnowledgeId = 1093, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44157] = {KnowledgeId = 1094, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44158] = {KnowledgeId = 1095, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44159] = {KnowledgeId = 1098, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44160] = {KnowledgeId = 1099, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44161] = {KnowledgeId = 1100, MainTheme = 108}
g_KnowledgeTable_CharKey_Key[44202] = {KnowledgeId = 649, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44204] = {KnowledgeId = 651, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44205] = {KnowledgeId = 652, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44208] = {KnowledgeId = 655, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44210] = {KnowledgeId = 657, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44212] = {KnowledgeId = 659, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44213] = {KnowledgeId = 660, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44214] = {KnowledgeId = 749, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44215] = {KnowledgeId = 648, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44301] = {KnowledgeId = 661, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44302] = {KnowledgeId = 662, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44303] = {KnowledgeId = 663, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44306] = {KnowledgeId = 666, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44307] = {KnowledgeId = 667, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44308] = {KnowledgeId = 668, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44311] = {KnowledgeId = 671, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44312] = {KnowledgeId = 672, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44313] = {KnowledgeId = 673, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44404] = {KnowledgeId = 677, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[44407] = {KnowledgeId = 680, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[44602] = {KnowledgeId = 693, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44604] = {KnowledgeId = 695, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44605] = {KnowledgeId = 696, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44606] = {KnowledgeId = 697, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44607] = {KnowledgeId = 698, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44610] = {KnowledgeId = 701, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[44611] = {KnowledgeId = 821, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44612] = {KnowledgeId = 639, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44613] = {KnowledgeId = 640, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44614] = {KnowledgeId = 641, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44615] = {KnowledgeId = 827, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[44616] = {KnowledgeId = 807, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[44617] = {KnowledgeId = 808, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[44618] = {KnowledgeId = 809, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[44619] = {KnowledgeId = 810, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[44620] = {KnowledgeId = 832, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[44621] = {KnowledgeId = 1036, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44622] = {KnowledgeId = 1037, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44623] = {KnowledgeId = 833, MainTheme = 153}
g_KnowledgeTable_CharKey_Key[44625] = {KnowledgeId = 1035, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44626] = {KnowledgeId = 1038, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44627] = {KnowledgeId = 1041, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44628] = {KnowledgeId = 1040, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44629] = {KnowledgeId = 1039, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44630] = {KnowledgeId = 1042, MainTheme = 20}
g_KnowledgeTable_CharKey_Key[44631] = {KnowledgeId = 676, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[44634] = {KnowledgeId = 1134, MainTheme = 182}
g_KnowledgeTable_CharKey_Key[44636] = {KnowledgeId = 1136, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[44637] = {KnowledgeId = 1137, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[44638] = {KnowledgeId = 1186, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[44645] = {KnowledgeId = 1224, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45001] = {KnowledgeId = 850, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45002] = {KnowledgeId = 851, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45003] = {KnowledgeId = 852, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45004] = {KnowledgeId = 853, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45005] = {KnowledgeId = 854, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45006] = {KnowledgeId = 855, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45007] = {KnowledgeId = 856, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45008] = {KnowledgeId = 857, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45009] = {KnowledgeId = 858, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45011] = {KnowledgeId = 859, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45012] = {KnowledgeId = 860, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45013] = {KnowledgeId = 861, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45014] = {KnowledgeId = 862, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45015] = {KnowledgeId = 863, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45016] = {KnowledgeId = 864, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45017] = {KnowledgeId = 865, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45018] = {KnowledgeId = 866, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45019] = {KnowledgeId = 867, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45020] = {KnowledgeId = 868, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45021] = {KnowledgeId = 869, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45022] = {KnowledgeId = 870, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45023] = {KnowledgeId = 871, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45024] = {KnowledgeId = 872, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45025] = {KnowledgeId = 873, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45026] = {KnowledgeId = 874, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45027] = {KnowledgeId = 875, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45028] = {KnowledgeId = 1026, MainTheme = 123}
g_KnowledgeTable_CharKey_Key[45029] = {KnowledgeId = 876, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45030] = {KnowledgeId = 877, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45032] = {KnowledgeId = 678, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[45033] = {KnowledgeId = 1013, MainTheme = 123}
g_KnowledgeTable_CharKey_Key[45034] = {KnowledgeId = 878, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45035] = {KnowledgeId = 879, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45038] = {KnowledgeId = 882, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45039] = {KnowledgeId = 883, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45054] = {KnowledgeId = 819, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[45056] = {KnowledgeId = 988, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45057] = {KnowledgeId = 1218, MainTheme = 261}
g_KnowledgeTable_CharKey_Key[45101] = {KnowledgeId = 856, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45102] = {KnowledgeId = 1027, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45103] = {KnowledgeId = 884, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45104] = {KnowledgeId = 609, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[45105] = {KnowledgeId = 885, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45106] = {KnowledgeId = 886, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45107] = {KnowledgeId = 887, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45108] = {KnowledgeId = 888, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45109] = {KnowledgeId = 889, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45110] = {KnowledgeId = 890, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45111] = {KnowledgeId = 891, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45112] = {KnowledgeId = 1034, MainTheme = 156}
g_KnowledgeTable_CharKey_Key[45114] = {KnowledgeId = 892, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45115] = {KnowledgeId = 893, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45116] = {KnowledgeId = 980, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[45117] = {KnowledgeId = 1023, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45120] = {KnowledgeId = 894, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45121] = {KnowledgeId = 895, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45122] = {KnowledgeId = 858, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45123] = {KnowledgeId = 896, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45124] = {KnowledgeId = 897, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45125] = {KnowledgeId = 898, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45126] = {KnowledgeId = 899, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45127] = {KnowledgeId = 900, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45128] = {KnowledgeId = 901, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45129] = {KnowledgeId = 902, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45130] = {KnowledgeId = 903, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45131] = {KnowledgeId = 904, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45132] = {KnowledgeId = 957, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[45133] = {KnowledgeId = 958, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45134] = {KnowledgeId = 959, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45135] = {KnowledgeId = 960, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[45136] = {KnowledgeId = 961, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45138] = {KnowledgeId = 962, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45139] = {KnowledgeId = 963, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45140] = {KnowledgeId = 970, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45141] = {KnowledgeId = 1014, MainTheme = 133}
g_KnowledgeTable_CharKey_Key[45142] = {KnowledgeId = 1015, MainTheme = 133}
g_KnowledgeTable_CharKey_Key[45153] = {KnowledgeId = 1012, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45155] = {KnowledgeId = 1086, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[45156] = {KnowledgeId = 1087, MainTheme = 134}
g_KnowledgeTable_CharKey_Key[45201] = {KnowledgeId = 978, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45202] = {KnowledgeId = 965, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45203] = {KnowledgeId = 966, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45204] = {KnowledgeId = 967, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45205] = {KnowledgeId = 968, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45206] = {KnowledgeId = 969, MainTheme = 266}
g_KnowledgeTable_CharKey_Key[45207] = {KnowledgeId = 964, MainTheme = 268}
g_KnowledgeTable_CharKey_Key[45208] = {KnowledgeId = 971, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45209] = {KnowledgeId = 979, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45210] = {KnowledgeId = 972, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45211] = {KnowledgeId = 973, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45212] = {KnowledgeId = 974, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45213] = {KnowledgeId = 975, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45214] = {KnowledgeId = 977, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45215] = {KnowledgeId = 976, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[45216] = {KnowledgeId = 1061, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45217] = {KnowledgeId = 1066, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45218] = {KnowledgeId = 1065, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45219] = {KnowledgeId = 1064, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45220] = {KnowledgeId = 1063, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45221] = {KnowledgeId = 1062, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45301] = {KnowledgeId = 996, MainTheme = 133}
g_KnowledgeTable_CharKey_Key[45302] = {KnowledgeId = 997, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45303] = {KnowledgeId = 998, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45304] = {KnowledgeId = 999, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45305] = {KnowledgeId = 1000, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45306] = {KnowledgeId = 1078, MainTheme = 271}
g_KnowledgeTable_CharKey_Key[45308] = {KnowledgeId = 989, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45309] = {KnowledgeId = 990, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45310] = {KnowledgeId = 991, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45311] = {KnowledgeId = 992, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45312] = {KnowledgeId = 993, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45313] = {KnowledgeId = 994, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[45314] = {KnowledgeId = 995, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[45315] = {KnowledgeId = 1024, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45316] = {KnowledgeId = 1001, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45321] = {KnowledgeId = 1030, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45327] = {KnowledgeId = 1031, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45328] = {KnowledgeId = 1032, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45329] = {KnowledgeId = 1033, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45330] = {KnowledgeId = 1043, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45331] = {KnowledgeId = 1044, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45332] = {KnowledgeId = 1045, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45333] = {KnowledgeId = 1046, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45334] = {KnowledgeId = 1047, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45335] = {KnowledgeId = 1048, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45336] = {KnowledgeId = 1049, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45337] = {KnowledgeId = 1050, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45338] = {KnowledgeId = 1051, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45339] = {KnowledgeId = 1052, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45340] = {KnowledgeId = 1067, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45341] = {KnowledgeId = 1057, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45343] = {KnowledgeId = 1074, MainTheme = 113}
g_KnowledgeTable_CharKey_Key[45344] = {KnowledgeId = 1075, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45345] = {KnowledgeId = 1076, MainTheme = 124}
g_KnowledgeTable_CharKey_Key[45348] = {KnowledgeId = 881, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[45349] = {KnowledgeId = 1079, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45350] = {KnowledgeId = 1080, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[45501] = {KnowledgeId = 1101, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45502] = {KnowledgeId = 1102, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45503] = {KnowledgeId = 1103, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45504] = {KnowledgeId = 1104, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45505] = {KnowledgeId = 1105, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45506] = {KnowledgeId = 334, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[45507] = {KnowledgeId = 337, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[45508] = {KnowledgeId = 1205, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45509] = {KnowledgeId = 1106, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45510] = {KnowledgeId = 1200, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45511] = {KnowledgeId = 1107, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45512] = {KnowledgeId = 1126, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45513] = {KnowledgeId = 1108, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45515] = {KnowledgeId = 1109, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45518] = {KnowledgeId = 1110, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45519] = {KnowledgeId = 1111, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45520] = {KnowledgeId = 312, MainTheme = 152}
g_KnowledgeTable_CharKey_Key[45521] = {KnowledgeId = 331, MainTheme = 158}
g_KnowledgeTable_CharKey_Key[45522] = {KnowledgeId = 1113, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45524] = {KnowledgeId = 1127, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45525] = {KnowledgeId = 454, MainTheme = 173}
g_KnowledgeTable_CharKey_Key[45526] = {KnowledgeId = 1116, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[45528] = {KnowledgeId = 1131, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45529] = {KnowledgeId = 1132, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45530] = {KnowledgeId = 1133, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45531] = {KnowledgeId = 1139, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45532] = {KnowledgeId = 1140, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45540] = {KnowledgeId = 1144, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45541] = {KnowledgeId = 1142, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45542] = {KnowledgeId = 1143, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45543] = {KnowledgeId = 1141, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45544] = {KnowledgeId = 1145, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45545] = {KnowledgeId = 1146, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45546] = {KnowledgeId = 1147, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45547] = {KnowledgeId = 1148, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45548] = {KnowledgeId = 1149, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45549] = {KnowledgeId = 1150, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45550] = {KnowledgeId = 1151, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45551] = {KnowledgeId = 1195, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45552] = {KnowledgeId = 1153, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45553] = {KnowledgeId = 1154, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45554] = {KnowledgeId = 1155, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45555] = {KnowledgeId = 1156, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45556] = {KnowledgeId = 1157, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45557] = {KnowledgeId = 1158, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45558] = {KnowledgeId = 1159, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45559] = {KnowledgeId = 1160, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45560] = {KnowledgeId = 1198, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45561] = {KnowledgeId = 1161, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45562] = {KnowledgeId = 1197, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[45563] = {KnowledgeId = 1196, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[45564] = {KnowledgeId = 1152, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45565] = {KnowledgeId = 1168, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45566] = {KnowledgeId = 1184, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45567] = {KnowledgeId = 1162, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45568] = {KnowledgeId = 1163, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45569] = {KnowledgeId = 1164, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45570] = {KnowledgeId = 1165, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45571] = {KnowledgeId = 1166, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45572] = {KnowledgeId = 1167, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[45573] = {KnowledgeId = 1168, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45574] = {KnowledgeId = 1169, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45575] = {KnowledgeId = 1170, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45576] = {KnowledgeId = 1171, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45577] = {KnowledgeId = 1172, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45578] = {KnowledgeId = 1173, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45579] = {KnowledgeId = 1174, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45580] = {KnowledgeId = 1175, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45581] = {KnowledgeId = 1192, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45582] = {KnowledgeId = 1190, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45583] = {KnowledgeId = 1193, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[45584] = {KnowledgeId = 1187, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45585] = {KnowledgeId = 1191, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[45586] = {KnowledgeId = 1188, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[45587] = {KnowledgeId = 1194, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[45592] = {KnowledgeId = 1203, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[45593] = {KnowledgeId = 1204, MainTheme = 282}
g_KnowledgeTable_CharKey_Key[46001] = {KnowledgeId = 1227, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46002] = {KnowledgeId = 1228, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46004] = {KnowledgeId = 1230, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46005] = {KnowledgeId = 1231, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46006] = {KnowledgeId = 1232, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46007] = {KnowledgeId = 1233, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46008] = {KnowledgeId = 1234, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46009] = {KnowledgeId = 1235, MainTheme = 287}
g_KnowledgeTable_CharKey_Key[46010] = {KnowledgeId = 1236, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46011] = {KnowledgeId = 1237, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46012] = {KnowledgeId = 1238, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46013] = {KnowledgeId = 1239, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46015] = {KnowledgeId = 1241, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46016] = {KnowledgeId = 1242, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46017] = {KnowledgeId = 1243, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46019] = {KnowledgeId = 1245, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46020] = {KnowledgeId = 1246, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46021] = {KnowledgeId = 1247, MainTheme = 287}
g_KnowledgeTable_CharKey_Key[46022] = {KnowledgeId = 1248, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46023] = {KnowledgeId = 1249, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46024] = {KnowledgeId = 1250, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46025] = {KnowledgeId = 1251, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46027] = {KnowledgeId = 1253, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46028] = {KnowledgeId = 1254, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46029] = {KnowledgeId = 1255, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46030] = {KnowledgeId = 1256, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46031] = {KnowledgeId = 1257, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46032] = {KnowledgeId = 1258, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46033] = {KnowledgeId = 1259, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46034] = {KnowledgeId = 1260, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46040] = {KnowledgeId = 1284, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[46041] = {KnowledgeId = 1282, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[46042] = {KnowledgeId = 1283, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[46047] = {KnowledgeId = 1286, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[46049] = {KnowledgeId = 1287, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[49490] = {KnowledgeId = 1081, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49494] = {KnowledgeId = 435, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49495] = {KnowledgeId = 498, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49496] = {KnowledgeId = 499, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49497] = {KnowledgeId = 500, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49498] = {KnowledgeId = 501, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49499] = {KnowledgeId = 611, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49500] = {KnowledgeId = 612, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49501] = {KnowledgeId = 618, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49502] = {KnowledgeId = 629, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49503] = {KnowledgeId = 633, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49504] = {KnowledgeId = 634, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49505] = {KnowledgeId = 635, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49506] = {KnowledgeId = 643, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49507] = {KnowledgeId = 644, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49508] = {KnowledgeId = 645, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49509] = {KnowledgeId = 646, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49510] = {KnowledgeId = 647, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49511] = {KnowledgeId = 650, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49512] = {KnowledgeId = 653, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49513] = {KnowledgeId = 654, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49514] = {KnowledgeId = 656, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49515] = {KnowledgeId = 658, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49516] = {KnowledgeId = 664, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49517] = {KnowledgeId = 665, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49518] = {KnowledgeId = 1135, MainTheme = 106}
g_KnowledgeTable_CharKey_Key[49524] = {KnowledgeId = 1206, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49525] = {KnowledgeId = 1208, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[49526] = {KnowledgeId = 1209, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[49527] = {KnowledgeId = 1210, MainTheme = 154}
g_KnowledgeTable_CharKey_Key[49528] = {KnowledgeId = 1211, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[49529] = {KnowledgeId = 1212, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[49530] = {KnowledgeId = 1206, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49531] = {KnowledgeId = 1213, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[49532] = {KnowledgeId = 1214, MainTheme = 112}
g_KnowledgeTable_CharKey_Key[49533] = {KnowledgeId = 1215, MainTheme = 154}
g_KnowledgeTable_CharKey_Key[49534] = {KnowledgeId = 1216, MainTheme = 183}
g_KnowledgeTable_CharKey_Key[49535] = {KnowledgeId = 1217, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[49536] = {KnowledgeId = 1206, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49537] = {KnowledgeId = 1206, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49538] = {KnowledgeId = 1206, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49539] = {KnowledgeId = 1219, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49540] = {KnowledgeId = 1220, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49541] = {KnowledgeId = 1221, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49542] = {KnowledgeId = 1222, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49543] = {KnowledgeId = 1223, MainTheme = 31301}
g_KnowledgeTable_CharKey_Key[49546] = {KnowledgeId = 43, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[49548] = {KnowledgeId = 1226, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[50001] = {KnowledgeId = 62, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50002] = {KnowledgeId = 63, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50003] = {KnowledgeId = 64, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50004] = {KnowledgeId = 65, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50005] = {KnowledgeId = 66, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50006] = {KnowledgeId = 67, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50007] = {KnowledgeId = 68, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50008] = {KnowledgeId = 69, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50009] = {KnowledgeId = 70, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50010] = {KnowledgeId = 71, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50011] = {KnowledgeId = 185, MainTheme = 105}
g_KnowledgeTable_CharKey_Key[50012] = {KnowledgeId = 69, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50013] = {KnowledgeId = 72, MainTheme = 211}
g_KnowledgeTable_CharKey_Key[50014] = {KnowledgeId = 73, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50201] = {KnowledgeId = 191, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50202] = {KnowledgeId = 192, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50203] = {KnowledgeId = 193, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50204] = {KnowledgeId = 194, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50205] = {KnowledgeId = 195, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50206] = {KnowledgeId = 196, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50207] = {KnowledgeId = 197, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50208] = {KnowledgeId = 198, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50209] = {KnowledgeId = 199, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50210] = {KnowledgeId = 186, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[50211] = {KnowledgeId = 222, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50212] = {KnowledgeId = 223, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50213] = {KnowledgeId = 224, MainTheme = 212}
g_KnowledgeTable_CharKey_Key[50402] = {KnowledgeId = 505, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50403] = {KnowledgeId = 506, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50404] = {KnowledgeId = 507, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50405] = {KnowledgeId = 508, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50406] = {KnowledgeId = 509, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50411] = {KnowledgeId = 511, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50413] = {KnowledgeId = 512, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50414] = {KnowledgeId = 513, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50415] = {KnowledgeId = 514, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50416] = {KnowledgeId = 515, MainTheme = 213}
g_KnowledgeTable_CharKey_Key[50418] = {KnowledgeId = 516, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50419] = {KnowledgeId = 517, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50420] = {KnowledgeId = 518, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50421] = {KnowledgeId = 519, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50422] = {KnowledgeId = 520, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50423] = {KnowledgeId = 521, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50424] = {KnowledgeId = 522, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50426] = {KnowledgeId = 524, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50427] = {KnowledgeId = 525, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50428] = {KnowledgeId = 526, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50429] = {KnowledgeId = 527, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50430] = {KnowledgeId = 528, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50431] = {KnowledgeId = 529, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50432] = {KnowledgeId = 530, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50433] = {KnowledgeId = 531, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50434] = {KnowledgeId = 532, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50435] = {KnowledgeId = 533, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50436] = {KnowledgeId = 534, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50437] = {KnowledgeId = 535, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50438] = {KnowledgeId = 536, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50439] = {KnowledgeId = 537, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50440] = {KnowledgeId = 538, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50441] = {KnowledgeId = 539, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50442] = {KnowledgeId = 540, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50443] = {KnowledgeId = 541, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50444] = {KnowledgeId = 542, MainTheme = 214}
g_KnowledgeTable_CharKey_Key[50445] = {KnowledgeId = 543, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50446] = {KnowledgeId = 544, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50447] = {KnowledgeId = 545, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50448] = {KnowledgeId = 546, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50449] = {KnowledgeId = 547, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50450] = {KnowledgeId = 548, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50451] = {KnowledgeId = 549, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50454] = {KnowledgeId = 551, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50455] = {KnowledgeId = 552, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50456] = {KnowledgeId = 553, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50457] = {KnowledgeId = 554, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50458] = {KnowledgeId = 555, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50459] = {KnowledgeId = 556, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50460] = {KnowledgeId = 557, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50461] = {KnowledgeId = 558, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50462] = {KnowledgeId = 559, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50464] = {KnowledgeId = 561, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50465] = {KnowledgeId = 562, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50466] = {KnowledgeId = 563, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50467] = {KnowledgeId = 564, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50468] = {KnowledgeId = 565, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50469] = {KnowledgeId = 566, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50470] = {KnowledgeId = 567, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50471] = {KnowledgeId = 568, MainTheme = 215}
g_KnowledgeTable_CharKey_Key[50475] = {KnowledgeId = 712, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[50476] = {KnowledgeId = 713, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50477] = {KnowledgeId = 714, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50478] = {KnowledgeId = 824, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50479] = {KnowledgeId = 716, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50480] = {KnowledgeId = 717, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50481] = {KnowledgeId = 718, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50482] = {KnowledgeId = 719, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50483] = {KnowledgeId = 720, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50484] = {KnowledgeId = 721, MainTheme = 181}
g_KnowledgeTable_CharKey_Key[50487] = {KnowledgeId = 724, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50488] = {KnowledgeId = 725, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50489] = {KnowledgeId = 726, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[50490] = {KnowledgeId = 727, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50491] = {KnowledgeId = 728, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50492] = {KnowledgeId = 729, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50493] = {KnowledgeId = 730, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50494] = {KnowledgeId = 750, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50495] = {KnowledgeId = 751, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50496] = {KnowledgeId = 752, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50497] = {KnowledgeId = 753, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50498] = {KnowledgeId = 754, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50499] = {KnowledgeId = 755, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50500] = {KnowledgeId = 756, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50501] = {KnowledgeId = 757, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50502] = {KnowledgeId = 758, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50503] = {KnowledgeId = 759, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50504] = {KnowledgeId = 760, MainTheme = 223}
g_KnowledgeTable_CharKey_Key[50505] = {KnowledgeId = 761, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50506] = {KnowledgeId = 762, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50507] = {KnowledgeId = 763, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50508] = {KnowledgeId = 764, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50509] = {KnowledgeId = 765, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50510] = {KnowledgeId = 766, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50511] = {KnowledgeId = 767, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50512] = {KnowledgeId = 768, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50513] = {KnowledgeId = 769, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50514] = {KnowledgeId = 770, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50515] = {KnowledgeId = 771, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50516] = {KnowledgeId = 772, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50517] = {KnowledgeId = 773, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50518] = {KnowledgeId = 774, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50519] = {KnowledgeId = 775, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50520] = {KnowledgeId = 776, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50521] = {KnowledgeId = 777, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50522] = {KnowledgeId = 778, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50523] = {KnowledgeId = 779, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50524] = {KnowledgeId = 780, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50525] = {KnowledgeId = 781, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50526] = {KnowledgeId = 782, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50527] = {KnowledgeId = 783, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50528] = {KnowledgeId = 784, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50529] = {KnowledgeId = 785, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50530] = {KnowledgeId = 786, MainTheme = 221}
g_KnowledgeTable_CharKey_Key[50531] = {KnowledgeId = 787, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50532] = {KnowledgeId = 788, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50533] = {KnowledgeId = 789, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50534] = {KnowledgeId = 790, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50535] = {KnowledgeId = 791, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50536] = {KnowledgeId = 792, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50537] = {KnowledgeId = 793, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50538] = {KnowledgeId = 794, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50539] = {KnowledgeId = 795, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50540] = {KnowledgeId = 702, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50541] = {KnowledgeId = 703, MainTheme = 188}
g_KnowledgeTable_CharKey_Key[50542] = {KnowledgeId = 704, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50543] = {KnowledgeId = 705, MainTheme = 191}
g_KnowledgeTable_CharKey_Key[50544] = {KnowledgeId = 706, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50545] = {KnowledgeId = 707, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50546] = {KnowledgeId = 708, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50547] = {KnowledgeId = 709, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50548] = {KnowledgeId = 710, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[50549] = {KnowledgeId = 823, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[50550] = {KnowledgeId = 822, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[50551] = {KnowledgeId = 820, MainTheme = 185}
g_KnowledgeTable_CharKey_Key[50553] = {KnowledgeId = 797, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50554] = {KnowledgeId = 805, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50556] = {KnowledgeId = 802, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50557] = {KnowledgeId = 796, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50558] = {KnowledgeId = 798, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50559] = {KnowledgeId = 799, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50560] = {KnowledgeId = 800, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50561] = {KnowledgeId = 803, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50562] = {KnowledgeId = 801, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50563] = {KnowledgeId = 804, MainTheme = 219}
g_KnowledgeTable_CharKey_Key[50564] = {KnowledgeId = 680, MainTheme = 186}
g_KnowledgeTable_CharKey_Key[50565] = {KnowledgeId = 699, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50566] = {KnowledgeId = 700, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50567] = {KnowledgeId = 642, MainTheme = 189}
g_KnowledgeTable_CharKey_Key[50568] = {KnowledgeId = 825, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50569] = {KnowledgeId = 829, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50570] = {KnowledgeId = 830, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50571] = {KnowledgeId = 828, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50572] = {KnowledgeId = 831, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50573] = {KnowledgeId = 834, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50574] = {KnowledgeId = 835, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50575] = {KnowledgeId = 836, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50576] = {KnowledgeId = 837, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50577] = {KnowledgeId = 838, MainTheme = 220}
g_KnowledgeTable_CharKey_Key[50578] = {KnowledgeId = 839, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50579] = {KnowledgeId = 840, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50580] = {KnowledgeId = 841, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50581] = {KnowledgeId = 842, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50582] = {KnowledgeId = 843, MainTheme = 222}
g_KnowledgeTable_CharKey_Key[50583] = {KnowledgeId = 844, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50584] = {KnowledgeId = 845, MainTheme = 216}
g_KnowledgeTable_CharKey_Key[50586] = {KnowledgeId = 906, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50587] = {KnowledgeId = 907, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50588] = {KnowledgeId = 908, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50589] = {KnowledgeId = 909, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50590] = {KnowledgeId = 910, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50591] = {KnowledgeId = 911, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50592] = {KnowledgeId = 912, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50593] = {KnowledgeId = 913, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50594] = {KnowledgeId = 914, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50595] = {KnowledgeId = 915, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50596] = {KnowledgeId = 916, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50597] = {KnowledgeId = 917, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50598] = {KnowledgeId = 918, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50599] = {KnowledgeId = 919, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50600] = {KnowledgeId = 920, MainTheme = 225}
g_KnowledgeTable_CharKey_Key[50602] = {KnowledgeId = 922, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50603] = {KnowledgeId = 923, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50604] = {KnowledgeId = 924, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50607] = {KnowledgeId = 927, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[50608] = {KnowledgeId = 928, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50609] = {KnowledgeId = 929, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50610] = {KnowledgeId = 930, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50612] = {KnowledgeId = 932, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50613] = {KnowledgeId = 933, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[50615] = {KnowledgeId = 935, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50616] = {KnowledgeId = 936, MainTheme = 269}
g_KnowledgeTable_CharKey_Key[50617] = {KnowledgeId = 937, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50618] = {KnowledgeId = 938, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50619] = {KnowledgeId = 939, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50620] = {KnowledgeId = 940, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50621] = {KnowledgeId = 941, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50622] = {KnowledgeId = 942, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50623] = {KnowledgeId = 943, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50624] = {KnowledgeId = 944, MainTheme = 260}
g_KnowledgeTable_CharKey_Key[50625] = {KnowledgeId = 945, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50626] = {KnowledgeId = 946, MainTheme = 262}
g_KnowledgeTable_CharKey_Key[50627] = {KnowledgeId = 947, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50628] = {KnowledgeId = 948, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50629] = {KnowledgeId = 949, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50630] = {KnowledgeId = 950, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50632] = {KnowledgeId = 952, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50633] = {KnowledgeId = 953, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50637] = {KnowledgeId = 981, MainTheme = 218}
g_KnowledgeTable_CharKey_Key[50638] = {KnowledgeId = 982, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50639] = {KnowledgeId = 983, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50640] = {KnowledgeId = 984, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50641] = {KnowledgeId = 985, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50642] = {KnowledgeId = 986, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50643] = {KnowledgeId = 987, MainTheme = 263}
g_KnowledgeTable_CharKey_Key[50644] = {KnowledgeId = 1002, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50645] = {KnowledgeId = 1003, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50646] = {KnowledgeId = 1016, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50647] = {KnowledgeId = 1005, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50648] = {KnowledgeId = 1006, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50649] = {KnowledgeId = 1007, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50650] = {KnowledgeId = 1008, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50651] = {KnowledgeId = 1009, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50652] = {KnowledgeId = 1010, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50653] = {KnowledgeId = 1004, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50654] = {KnowledgeId = 1011, MainTheme = 267}
g_KnowledgeTable_CharKey_Key[50655] = {KnowledgeId = 1028, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50656] = {KnowledgeId = 1053, MainTheme = 270}
g_KnowledgeTable_CharKey_Key[50659] = {KnowledgeId = 1055, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50660] = {KnowledgeId = 1054, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50661] = {KnowledgeId = 1056, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50662] = {KnowledgeId = 1068, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50663] = {KnowledgeId = 1069, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50664] = {KnowledgeId = 1070, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50665] = {KnowledgeId = 1060, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50666] = {KnowledgeId = 1072, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50667] = {KnowledgeId = 1073, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50668] = {KnowledgeId = 1077, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50669] = {KnowledgeId = 1058, MainTheme = 226}
g_KnowledgeTable_CharKey_Key[50670] = {KnowledgeId = 1059, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50671] = {KnowledgeId = 1071, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50672] = {KnowledgeId = 722, MainTheme = 227}
g_KnowledgeTable_CharKey_Key[50673] = {KnowledgeId = 723, MainTheme = 224}
g_KnowledgeTable_CharKey_Key[50700] = {KnowledgeId = 1114, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50701] = {KnowledgeId = 1115, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50702] = {KnowledgeId = 1128, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50703] = {KnowledgeId = 1117, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50704] = {KnowledgeId = 1118, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50705] = {KnowledgeId = 1119, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50706] = {KnowledgeId = 1120, MainTheme = 280}
g_KnowledgeTable_CharKey_Key[50707] = {KnowledgeId = 1121, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50708] = {KnowledgeId = 1122, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50709] = {KnowledgeId = 1123, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50710] = {KnowledgeId = 1112, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50711] = {KnowledgeId = 1124, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[50712] = {KnowledgeId = 1125, MainTheme = 228}
g_KnowledgeTable_CharKey_Key[50713] = {KnowledgeId = 1177, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[50714] = {KnowledgeId = 1176, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[50715] = {KnowledgeId = 1178, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[50716] = {KnowledgeId = 1179, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[50717] = {KnowledgeId = 1180, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[50718] = {KnowledgeId = 1181, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[50719] = {KnowledgeId = 1182, MainTheme = 283}
g_KnowledgeTable_CharKey_Key[50720] = {KnowledgeId = 1183, MainTheme = 284}
g_KnowledgeTable_CharKey_Key[50722] = {KnowledgeId = 1185, MainTheme = 285}
g_KnowledgeTable_CharKey_Key[50723] = {KnowledgeId = 1201, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[50724] = {KnowledgeId = 1202, MainTheme = 281}
g_KnowledgeTable_CharKey_Key[50725] = {KnowledgeId = 1261, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50726] = {KnowledgeId = 1262, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50727] = {KnowledgeId = 1263, MainTheme = 288}
g_KnowledgeTable_CharKey_Key[50728] = {KnowledgeId = 1264, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50729] = {KnowledgeId = 1265, MainTheme = 288}
g_KnowledgeTable_CharKey_Key[50730] = {KnowledgeId = 1266, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50731] = {KnowledgeId = 1267, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50732] = {KnowledgeId = 1268, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50733] = {KnowledgeId = 1269, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50734] = {KnowledgeId = 1270, MainTheme = 287}
g_KnowledgeTable_CharKey_Key[50735] = {KnowledgeId = 1271, MainTheme = 287}
g_KnowledgeTable_CharKey_Key[50736] = {KnowledgeId = 1272, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50737] = {KnowledgeId = 1273, MainTheme = 288}
g_KnowledgeTable_CharKey_Key[50738] = {KnowledgeId = 1274, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50740] = {KnowledgeId = 1275, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50741] = {KnowledgeId = 1276, MainTheme = 287}
g_KnowledgeTable_CharKey_Key[50742] = {KnowledgeId = 1277, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50743] = {KnowledgeId = 1278, MainTheme = 286}
g_KnowledgeTable_CharKey_Key[50744] = {KnowledgeId = 1279, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50745] = {KnowledgeId = 1280, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50746] = {KnowledgeId = 1281, MainTheme = 288}
g_KnowledgeTable_CharKey_Key[50747] = {KnowledgeId = 1252, MainTheme = 288}
g_KnowledgeTable_CharKey_Key[50748] = {KnowledgeId = 1289, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[50801] = {KnowledgeId = 9087, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[50804] = {KnowledgeId = 9088, MainTheme = 30109}
g_KnowledgeTable_CharKey_Key[50807] = {KnowledgeId = 9089, MainTheme = 31009}
g_KnowledgeTable_CharKey_Key[54001] = {KnowledgeId = 7256, MainTheme = 31240}
g_KnowledgeTable_CharKey_Key[54003] = {KnowledgeId = 7604, MainTheme = 30603}
g_KnowledgeTable_CharKey_Key[54017] = {KnowledgeId = 6999, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[54018] = {KnowledgeId = 7000, MainTheme = 30103}
g_KnowledgeTable_CharKey_Key[54030] = {KnowledgeId = 9241, MainTheme = 30106}
g_KnowledgeTable_CharKey_Key[54032] = {KnowledgeId = 9240, MainTheme = 31008}
g_KnowledgeTable_CharKey_Key[57060] = {KnowledgeId = 1288, MainTheme = 289}
g_KnowledgeTable_CharKey_Key[57065] = {KnowledgeId = 894, MainTheme = 265}
g_KnowledgeTable_CharKey_Key[60010] = {KnowledgeId = 4047, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[60011] = {KnowledgeId = 4047, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[60013] = {KnowledgeId = 4268, MainTheme = 10301}
g_KnowledgeTable_CharKey_Key[60112] = {KnowledgeId = 4152, MainTheme = 10212}
g_KnowledgeTable_CharKey_Key[60113] = {KnowledgeId = 4007, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[60114] = {KnowledgeId = 4008, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[60115] = {KnowledgeId = 4010, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[60116] = {KnowledgeId = 4011, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[60117] = {KnowledgeId = 4012, MainTheme = 10103}
g_KnowledgeTable_CharKey_Key[64401] = {KnowledgeId = 76, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[64402] = {KnowledgeId = 77, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[64403] = {KnowledgeId = 78, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[64404] = {KnowledgeId = 79, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[64405] = {KnowledgeId = 80, MainTheme = 103}
g_KnowledgeTable_CharKey_Key[64411] = {KnowledgeId = 226, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[64412] = {KnowledgeId = 227, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[64413] = {KnowledgeId = 228, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[64414] = {KnowledgeId = 229, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[64415] = {KnowledgeId = 230, MainTheme = 116}
g_KnowledgeTable_CharKey_Key[64421] = {KnowledgeId = 569, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64422] = {KnowledgeId = 570, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64423] = {KnowledgeId = 571, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64424] = {KnowledgeId = 572, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64425] = {KnowledgeId = 573, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64426] = {KnowledgeId = 574, MainTheme = 159}
g_KnowledgeTable_CharKey_Key[64427] = {KnowledgeId = 575, MainTheme = 159}


function getCardNameByCharacterKey(characterKey)
	local tEntry = g_KnowledgeTable_CharKey_Key[characterKey]

	if tEntry == nil then
		return nil
	end

	local knowledge = getSelfPlayer():get():getMentalKnowledge()
	local mentalObject = knowledge:getThemeByKeyRaw(tEntry.MainTheme)

	for i=0, mentalObject:getChildCardCount() do
		local card = mentalObject:getChildCardByIndex(i)

		if card:getKey() == tEntry.KnowledgeId then
			return card:getName()
		end
	end	

	return nil
end

local UI_ANI_ADV = CppEnums.PAUI_ANIM_ADVANCE_TYPE
local UI_AV = CppEnums.PA_UI_ALIGNVERTICAL
local UI_TT = CppEnums.PAUI_TEXTURE_TYPE
local UCT = CppEnums.PA_UI_CONTROL_TYPE
local UI_color = Defines.Color
local UI_TM = CppEnums.TextMode
local UI_classType = CppEnums.ClassType
local ActorProxyType = {
  isActorProxy = 0,
  isCharacter = 1,
  isPlayer = 2,
  isSelfPlayer = 3,
  isOtherPlayer = 4,
  isAlterego = 5,
  isMonster = 6,
  isNpc = 7,
  isDeadBody = 8,
  isVehicle = 9,
  isGate = 10,
  isHouseHold = 11,
  isInstallationActor = 12,
  isCollect = 13,
  isInstanceObject = 14
}
local actorProxyBufferSize = {
  [ActorProxyType.isSelfPlayer] = 1,
  [ActorProxyType.isOtherPlayer] = 300,
  [ActorProxyType.isMonster] = 150,
  [ActorProxyType.isNpc] = 100,
  [ActorProxyType.isVehicle] = 50,
  [ActorProxyType.isHouseHold] = 30,
  [ActorProxyType.isInstallationActor] = 25,
  [ActorProxyType.isInstanceObject] = 50
}
local actorProxyCapacitySize = {
  [ActorProxyType.isSelfPlayer] = 1,
  [ActorProxyType.isOtherPlayer] = 50,
  [ActorProxyType.isMonster] = 25,
  [ActorProxyType.isNpc] = 25,
  [ActorProxyType.isVehicle] = 20,
  [ActorProxyType.isHouseHold] = 5,
  [ActorProxyType.isInstallationActor] = 2,
  [ActorProxyType.isInstanceObject] = 4
}
local basePanel = {
  [ActorProxyType.isSelfPlayer] = Panel_Copy_SelfPlayer,
  [ActorProxyType.isOtherPlayer] = Panel_Copy_OtherPlayer,
  [ActorProxyType.isMonster] = Panel_Copy_Monster,
  [ActorProxyType.isNpc] = Panel_Copy_Npc,
  [ActorProxyType.isVehicle] = Panel_Copy_Vehicle,
  [ActorProxyType.isHouseHold] = Panel_Copy_HouseHold,
  [ActorProxyType.isInstallationActor] = Panel_Copy_Installation,
  [ActorProxyType.isInstanceObject] = Panel_Copy_Installation
}
local lifeContentCount = 14
if ToClient_IsConferenceMode() then
  lifeContentCount = 0
else
  lifeContentCount = 14
end
local lifeContent = {
  gathering = 0,
  fishing = 1,
  hunting = 2,
  cook = 3,
  alchemy = 4,
  manufacture = 5,
  horse = 6,
  trade = 7,
  growth = 8,
  sail = 9,
  combat = 10,
  money = 11,
  battleField = 12,
  match = 13
}
local lifeRankSetTexture = {}
for i = 0, lifeContentCount - 1 do
  lifeRankSetTexture[i] = {}
end
if lifeContentCount > 0 then
  for index = 0, lifeContentCount - 1 do
    for rankIndex = 1, 5 do
      lifeRankSetTexture[index][rankIndex] = {
        x1,
        y1,
        x2,
        y2
      }
      lifeRankSetTexture[index][rankIndex].x1 = 2 + index * 38
      lifeRankSetTexture[index][rankIndex].y1 = 2 + (rankIndex - 1) * 34
      lifeRankSetTexture[index][rankIndex].x2 = 39 + index * 38
      lifeRankSetTexture[index][rankIndex].y2 = 35 + (rankIndex - 1) * 34
    end
  end
end
local function init()
  for _, value in pairs(ActorProxyType) do
    if basePanel[value] then
      ToClient_SetNameTagPanel(value, basePanel[value])
      if nil ~= actorProxyBufferSize[value] and nil ~= actorProxyCapacitySize[value] then
        ToClient_InitializeOverHeadPanelPool(value, actorProxyBufferSize[value], actorProxyCapacitySize[value])
      end
    end
  end
end
init()
local _stackHpBarColor = {
  [-1] = Defines.Color.C_FF000000,
  [0] = 4291035148,
  [1] = 4294934576,
  [2] = 4294953029,
  [3] = 4287220554,
  [4] = 4281445845,
  [5] = 4278220233,
  [6] = 4289076667
}
local _normalHpBarColor = {
  defaultColor = Defines.Color.C_FFD20000,
  blindMode_Red = Defines.Color.C_FFFFCE22,
  blindMode_Blue = Defines.Color.C_FFFFCE22,
  partyMemeberColor = Defines.Color.C_FF008AFF
}
local _mpBarColor = {
  ep_Character = Defines.Color.C_FF81CE1C,
  fp_Character = Defines.Color.C_FFF0D147,
  bp_Character = Defines.Color.C_FFBFBFB7,
  darkelf = Defines.Color.C_FF8B4DFF,
  mp_Character = Defines.Color.C_FF367CFE
}
local _characterHpBarContainer = {}
local _maxHpCount = 1000
local _maxHpBarColorCount = 7
local _isStackOvered = false
local function CharacterNameTag_SetHpBarContainer(actorKeyRaw, actorProxy, targetPanel)
  local hpRate = actorProxy:getHp() % _maxHpCount / _maxHpCount * 100
  local modifiedHpIdx = math.floor(actorProxy:getHp() / _maxHpCount)
  local hpRatePerMaxHP = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
  local stackHpBack = UI.getChildControl(targetPanel, "ProgressBack")
  local stackHpBackColor = UI.getChildControl(targetPanel, "Progress2_StackHpBackColor")
  local stackHpbar = UI.getChildControl(targetPanel, "CharacterHPGageProgress")
  local hpPointer = UI.getChildControl(targetPanel, "StaticText_HP")
  local isColorBlindMode = ToClient_getGameUIManagerWrapper():getLuaCacheDataListNumber(CppEnums.GlobalUIOptionType.ColorBlindMode)
  if nil == _characterHpBarContainer[actorKeyRaw] then
    local hpBarData = {}
    hpBarData.stackHpBar = stackHpbar
    hpBarData.stackHpBarBackColor = stackHpBackColor
    hpBarData.hpPointer = hpPointer
    local colorValue = modifiedHpIdx % _maxHpBarColorCount
    local backColorValue = colorValue - 1
    if modifiedHpIdx <= 0 then
      backColorValue = -1
    elseif backColorValue < 0 then
      backColorValue = _maxHpBarColorCount - 1
    end
    if modifiedHpIdx > _maxHpBarColorCount * 2 then
      hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
      hpBarData.stackHpBar:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
    else
      hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[backColorValue])
      hpBarData.stackHpBar:SetColor(_stackHpBarColor[colorValue])
    end
    hpBarData.stackHpBar:SetAniSpeed(0)
    hpBarData.stackHpBar:SetProgressRate(hpRate)
    hpBarData.stackHpBarBackColor:SetAniSpeed(0)
    hpBarData.stackHpBarBackColor:SetProgressRate(100)
    hpBarData.targetHpIdx = modifiedHpIdx
    hpBarData.currentHpIdx = modifiedHpIdx
    hpBarData.currentHpRate = hpRate
    hpBarData.hpBack = stackHpBack
    _characterHpBarContainer[actorKeyRaw] = hpBarData
  else
    _characterHpBarContainer[actorKeyRaw].stackHpBar = stackHpbar
    _characterHpBarContainer[actorKeyRaw].stackHpBarBackColor = stackHpBackColor
    _characterHpBarContainer[actorKeyRaw].targetHpIdx = modifiedHpIdx
    _characterHpBarContainer[actorKeyRaw].currentHpRate = hpRate
    _characterHpBarContainer[actorKeyRaw].hpPointer = hpPointer
  end
  if modifiedHpIdx == _characterHpBarContainer[actorKeyRaw].currentHpIdx then
    _characterHpBarContainer[actorKeyRaw].stackHpBar:SetProgressRate(hpRate)
  end
end
local function CharacterNameTag_FreeHpBarContainer(actorKeyRaw)
  _characterHpBarContainer[actorKeyRaw] = nil
end
local getControlProperty = function(panel, index)
  if index == CppEnums.SpawnType.eSpawnType_SkillTrainer then
    return UI.getChildControl(panel, "Static_Skill")
  elseif index == CppEnums.SpawnType.eSpawnType_ShopMerchant then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Potion then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Weapon then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Jewel then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Furniture then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Collect then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Fish then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Worker then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Alchemy then
    return UI.getChildControl(panel, "Static_Store")
  elseif index == CppEnums.SpawnType.eSpawnType_Stable then
    return UI.getChildControl(panel, "Static_Stable")
  elseif index == CppEnums.SpawnType.eSpawnType_WareHouse then
    return UI.getChildControl(panel, "Static_WareHouse")
  elseif index == CppEnums.SpawnType.eSpawnType_auction then
    return UI.getChildControl(panel, "Static_Auction")
  elseif index == CppEnums.SpawnType.eSpawnType_inn then
    return UI.getChildControl(panel, "Static_Inn")
  elseif index == CppEnums.SpawnType.eSpawnType_guild then
    return UI.getChildControl(panel, "Static_Guild")
  elseif index == CppEnums.SpawnType.eSpawnType_intimacy then
    return UI.getChildControl(panel, "Static_Intimacy")
  else
    return nil
  end
end
local sortCenterX = function(insertedArray)
  local size = {}
  local fullSize = 0
  local scaleBuffer
  for key, value in pairs(insertedArray) do
    if value:GetShow() then
      scaleBuffer = value:GetScale()
      value:SetScale(1, 1)
      local aSize = value:GetSizeX()
      size[key] = aSize
      fullSize = fullSize + aSize
    end
  end
  local leftSize = -fullSize / 2
  for key, value in pairs(insertedArray) do
    if value:GetShow() then
      leftSize = leftSize + size[key] / 2
      value:SetSpanSize(leftSize, value:GetSpanSize().y)
      value:SetScale(scaleBuffer.x, scaleBuffer.y)
      leftSize = leftSize + size[key] / 2
    end
  end
end
local guildMarkInit = function(guildMark)
  guildMark:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Buttons.dds")
  local x1, y1, x2, y2 = setTextureUV_Func(guildMark, 183, 1, 188, 6)
  guildMark:getBaseTexture():setUV(x1, y1, x2, y2)
  guildMark:setRenderTexture(guildMark:getBaseTexture())
end
local monsterLevelNameColor = {
  4287993237,
  4285643008,
  4287816466,
  4290966896,
  4292540333,
  4294967295,
  4294954702,
  4294943137,
  4294927717,
  4294901760,
  4287579626
}
local monsterLevelNameColorText = {
  "FF959595",
  "FF71B900",
  "FF92E312",
  "FFC2F570",
  "FFDAF7AD",
  "FFFFFFFF",
  "FFFFCECE",
  "FFFFA1A1",
  "FFFF6565",
  "FFFF0000",
  "FF8F45EA"
}
local playerlevelColor = {
  "FFC8FFC8",
  "FFC8FFC8",
  "FFFFFFFF",
  "FFFFE8BB",
  "FFFFC960",
  "FFFFAD10",
  "FFFF8A00",
  "FFFF6C00",
  "FFFF4E00",
  "FFE10000"
}
local function getColorBySelfPlayerLevel(level)
  if level < 0 then
    return playerlevelColor[1]
  elseif level >= 100 then
    return playerlevelColor[10]
  else
    return playerlevelColor[math.floor(level / 10) + 1]
  end
end
local function getColorByMonsterLevel(playerLevel, monsterLevel)
  local levelDiff = monsterLevel - playerLevel + 6
  levelDiff = math.max(levelDiff, 1)
  levelDiff = math.min(levelDiff, 11)
  return monsterLevelNameColorText[levelDiff]
end
local function setMonsterNameColor_Level(playerLevel, monsterLevel, nameStatic, isDarkSpiritMonster)
  if isDarkSpiritMonster then
    nameStatic:SetFontColor(Defines.Color.C_FF6A0000)
    return
  end
  local levelDiff = monsterLevel - playerLevel + 6
  levelDiff = math.max(levelDiff, 1)
  levelDiff = math.min(levelDiff, 11)
  nameStatic:SetFontColor(monsterLevelNameColor[levelDiff])
end
function setMonsterNameColor_Stat(playerOffence, monsterDeffence, nameStatic, isDarkSpiritMonster)
  if isDarkSpiritMonster then
    nameStatic:SetFontColor(Defines.Color.C_FF6A0000)
    return
  end
  local rate = 5
  local statDiff = math.floor((monsterDeffence - playerOffence) / rate + 6)
  statDiff = math.max(statDiff, 1)
  statDiff = math.min(statDiff, 11)
  nameStatic:SetFontColor(monsterLevelNameColor[statDiff])
end
local hideTimeType = {
  overHeadUI = 0,
  preemptiveStrike = 1,
  bubbleBox = 2,
  murdererEnd = 3
}
local myMilitiaTeamNo = function()
  local selfPlayer = getSelfPlayer()
  if nil == selfPlayer then
    return -1
  end
  local selfProxy = selfPlayer:get()
  local myTeamNo = selfProxy:getVolunteerTeamNoForLua()
  if myTeamNo >= 1000 then
    return 1
  elseif myTeamNo >= 100 then
    return 0
  else
    return -1
  end
end
local function settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
  local nameTag  
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if actorProxy:isKingOrLordTent() then
    nameTag = UI.getChildControl(targetPanel, "KingsCharacterName")
  elseif actorProxy:isLargeHpBarCharacter() then
    return
  else
    nameTag = UI.getChildControl(targetPanel, "CharacterName")
  end
  if nil == nameTag then
    return
  end
  local characterActorProxyWrapper = getCharacterActor(actorKeyRaw)
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  
  local isShowForAlli = true
  --if (actorProxy:isPlayer() and true == playerActorProxyWrapper:get():isHideCharacterName()) and (true == playerActorProxyWrapper:get():isShowNameWhenCamouflage()) and (getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey()) then
    --isShowForAlli = true
  --end 
  
  --if (actorProxy:isPlayer() and characterActorProxyWrapper:get():isClientAI()) or ( actorProxy:isHiddenName() and false == actorProxy:isVehicle() and false == actorProxy:isFlashBanged() ) or true == isShowForAlli then
    nameTag:SetShow(true)
  --end 

  if actorProxy:isPlayer() then
    local militiaIcon = UI.getChildControl(targetPanel, "Static_MilitiaIcon")
    local militiaTeamNo = actorProxy:getVolunteerTeamNoForLua()
    if militiaTeamNo >= 1000 then
      if nil ~= playerActorProxyWrapper then
        local isMilitia = playerActorProxyWrapper:get():isVolunteer()
        if isMilitia then
          militiaIcon:SetShow(true)
          militiaIcon:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Window/PvP/Militia_01.dds")
          if 0 == myMilitiaTeamNo() then
            local x1, y1, x2, y2 = setTextureUV_Func(militiaIcon, 160, 193, 195, 235)
            militiaIcon:getBaseTexture():setUV(x1, y1, x2, y2)
          else
            local x1, y1, x2, y2 = setTextureUV_Func(militiaIcon, 88, 193, 123, 235)
            militiaIcon:getBaseTexture():setUV(x1, y1, x2, y2)
          end
          militiaIcon:setRenderTexture(militiaIcon:getBaseTexture())
          nameTag:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_CHARACTERNAMETAG_MILITIADEFFENCE"))
          nameTag:SetShow(true)
          return
        end
      end
    elseif militiaTeamNo >= 100 then
      if nil ~= playerActorProxyWrapper then
        local isMilitia = playerActorProxyWrapper:get():isVolunteer()
        if isMilitia then
          militiaIcon:SetShow(true)
          militiaIcon:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Window/PvP/Militia_01.dds")
          if 0 == myMilitiaTeamNo() then
            local x1, y1, x2, y2 = setTextureUV_Func(militiaIcon, 196, 193, 231, 235)
            militiaIcon:getBaseTexture():setUV(x1, y1, x2, y2)
          else
            local x1, y1, x2, y2 = setTextureUV_Func(militiaIcon, 124, 193, 159, 235)
            militiaIcon:getBaseTexture():setUV(x1, y1, x2, y2)
          end
          militiaIcon:setRenderTexture(militiaIcon:getBaseTexture())
          nameTag:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_CHARACTERNAMETAG_MILITIAATTACK"))
          nameTag:SetShow(true)
          return
        end
      end
    else
      militiaIcon:SetShow(false)
    end
  end
  if actorProxy:isHouseHold() then
    local houseActorWarpper = getHouseHoldActor(actorKeyRaw)
    local isMine = houseActorWarpper:get():isOwnedBySelfPlayer()
    local isMyGuild = houseActorWarpper:get():isOwnedBySelfPlayerGuild()
    local isPersonalTent = houseActorWarpper:get():isPersonalTent()
    local isSiegeTent = houseActorWarpper:get():isKingOrLordTent()
    if isMine and isPersonalTent then
      local tentWrapper = getTemporaryInformationWrapper():getSelfTentWrapperByActorKeyRaw(actorKeyRaw)
      if nil ~= tentWrapper then
        local expireTime = tentWrapper:getSelfTentExpiredTime_s64()
        local lefttimeText = convertStringFromDatetime(getLeftSecond_TTime64(expireTime))
        textName = getHouseHoldName(actorProxy)
        targetPanel:Set3DRotationY(actorProxy:getRotation())
      end
    elseif isMyGuild and isSiegeTent then
      local expireTime = houseActorWarpper:get():getExpiredTime()
      local lefttimeText = convertStringFromDatetime(getLeftSecond_TTime64(expireTime))
      textName = getHouseHoldName(actorProxy)
      targetPanel:Set3DRotationY(actorProxy:getRotation())
    else
      textName = getHouseHoldName(actorProxy)
      targetPanel:Set3DRotationY(actorProxy:getRotation())
    end
  elseif actorProxy:isInstallationActor() then
    textName = actorProxy:getStaticStatusName()
    local installationActorWrapper = getInstallationActor(actorKeyRaw)
    if toInt64(0, 0) ~= installationActorWrapper:getOwnerHouseholdNo_s64() and installationActorWrapper:isHavestInstallation() then
      local rate = installationActorWrapper:getHarvestTotalGrowRate() * 100
      if rate < 0 then
        rate = 0
      end
      textName = installationActorWrapper:get():getStaticStatusName() .. " - (<PAColor0xFFffd429>" .. tostring(math.floor(rate)) .. "%<PAOldColor>)"
    end
  elseif isNpcWorker(actorProxy) then
    textName = getNpcWorkerOwnerName(actorProxy)
  elseif actorProxy:isSelfPlayer() then
    local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
    if false == playerActorProxyWrapper:get():isFlashBanged() and false == playerActorProxyWrapper:get():isHideCharacterName() and true == playerActorProxyWrapper:get():isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
      nameTag:SetMonoTone(true)
    elseif false == playerActorProxyWrapper:get():isFlashBanged() and true == playerActorProxyWrapper:get():isConcealCharacter() then
      nameTag:SetMonoTone(true)
    else
      nameTag:SetMonoTone(false)
    end
    local level = playerActorProxyWrapper:get():getLevel()
    textName = playerActorProxyWrapper:getName()
  elseif actorProxy:isPlayer() then
    local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)

    textName = playerActorProxyWrapper:getName()

    if playerActorProxyWrapper:get():isEquipCamouflage() then
      textName = playerActorProxyWrapper:getUserNickname()
    end 
    
    local level = playerActorProxyWrapper:get():getLevel()  

    if g_ShowPlayerLevels then
      textName = textName .. " (Lv. " .. tostring(level) .. ")"     
    end

    if g_ShowPlayerHp then
      textName = textName .. " [Hp. " .. math.floor(actorProxy:getMaxHp()) .. "]"
    end

    if g_ShowPlayerGearScore then
    	textName = textName .. " {GS. " .. math.floor(playerActorProxyWrapper:get():getTotalStatValue()) .. "}"
	end
  elseif actorProxy:isInstanceObject() then
    if actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isTrap() then
      nameTag:SetShow(false)
      return
    end
    textName = actorProxyWrapper:getName()
  elseif actorProxy:isNpc() then
    textName = actorProxyWrapper:getName()
    local isFusionCore = actorProxy:getCharacterStaticStatus():isFusionCore()
    if true == isFusionCore then
      local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
      if npcActorProxyWrapper:getTeamNo_s64() == getSelfPlayer():getTeamNo_s64() then
        textName = textName
      else
        textName = ""
      end
    end
  elseif actorProxy:isMonster() then
    local monsterActorProxyWrapper = getMonsterActor( actorKeyRaw )
    if nil == monsterActorProxyWrapper then
      return
    end
      
    local monsterLevel = monsterActorProxyWrapper:get():getCharacterStaticStatus().level
    
    local cardName = nil

    if g_ShowObtainedKnowledge then
    	cardName = getCardNameByCharacterKey(monsterActorProxyWrapper:getCharacterKey())

    	if cardName ~= nil then
    		if string.find(cardName, "?") ~= nil then
    			cardName = nil
    		end
    	end
	end

    local t = checkActiveCondition(monsterActorProxyWrapper:getCharacterKey())

    if cardName == nil then
    	textName = actorProxyWrapper:getName()
	else
		textName = cardName
	end

    if g_ShowMonsterLevels then
      textName = textName .. " (Lv. " .. tostring(monsterLevel) .. ")"     
    end

    if g_ShowMonsterHp then
      textName = textName .. " [Hp. " .. math.floor(actorProxy:getMaxHp()) .. "]"
    end

    if not t and g_ShowKnowledgeHint then
      textName = textName .. " (missing knowledge)"
    end
  else
    textName = actorProxyWrapper:getName()
  end
  nameTag:SetText(textName)
  nameTag:SetShow(true)
end
local settingAlias = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local aliasInfo = UI.getChildControl(targetPanel, "CharacterAlias")
  if nil == aliasInfo then
    return
  end
  local actorProxy = playerActorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if actorProxy:isPlayer() then
    local militiaTeamNo = actorProxy:getVolunteerTeamNoForLua()
    local isMilitia = actorProxy:isVolunteer()
    if militiaTeamNo > 0 and true == isMilitia then
      aliasInfo:SetShow(false)
      return
    end
  end
  if actorProxy:isPlayer() then
    if playerActorProxyWrapper:checkToTitleKey() then
      aliasInfo:SetText(playerActorProxyWrapper:getTitleName())
      if false == playerActorProxyWrapper:get():isFlashBanged() and false == playerActorProxyWrapper:get():isHideCharacterName() and true == playerActorProxyWrapper:get():isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
        aliasInfo:SetMonoTone(true)
      elseif false == playerActorProxyWrapper:get():isFlashBanged() and true == playerActorProxyWrapper:get():isConcealCharacter() then
        aliasInfo:SetMonoTone(true)
      else
        aliasInfo:SetMonoTone(false)
      end
      local isShowForAlli = false
      if true == actorProxy:isHideCharacterName() and true == actorProxy:isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
        isShowForAlli = true
      end
      if actorProxy:isHideCharacterName() and false == actorProxy:isFlashBanged() or true == isShowForAlli then
        aliasInfo:SetShow(true)
      else
        local titleColor = 4282695908
        if playerActorProxyWrapper:isExistTitleColor() then
          titleColor = playerActorProxyWrapper:getTitleColorValue()
        end
        aliasInfo:SetShow(true)
        aliasInfo:SetFontColor(titleColor)
        aliasInfo:useGlowFont(true, "BaseFont_10_Glow", 4278456421)
      end
    else
      aliasInfo:SetShow(false)
    end
  else
    aliasInfo:SetShow(false)
  end
end
local settingTitle = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  local actorProxy = actorProxyWrapper:get()
  if false == actorProxy:isPlayer() and false == actorProxy:isMonster() and false == actorProxy:isNpc() then
    return
  end
  local nickName = UI.getChildControl(targetPanel, "CharacterTitle")
  if nil == nickName then
    return
  end
  nickName:SetShow(false)
  if actorProxy:isPlayer() then
    local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
    if nil == playerActorProxyWrapper then
      return
    end
    local militiaTeamNo = actorProxy:getVolunteerTeamNoForLua()
    local isMilitia = playerActorProxyWrapper:get():isVolunteer()
    if militiaTeamNo > 0 and true == isMilitia then
      nickName:SetShow(false)
      return
    end
    if false == playerActorProxyWrapper:get():isFlashBanged() and false == playerActorProxyWrapper:get():isHideCharacterName() and true == playerActorProxyWrapper:get():isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
      nickName:SetMonoTone(true)
    elseif false == playerActorProxyWrapper:get():isFlashBanged() and true == playerActorProxyWrapper:get():isConcealCharacter() then
      nickName:SetMonoTone(true)
    else
      nickName:SetMonoTone(false)
    end
    local isShowForAlli = false
    if true == playerActorProxyWrapper:get():isHideCharacterName() and true == playerActorProxyWrapper:get():isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
      isShowForAlli = true
    end
    if playerActorProxyWrapper:get():isHideCharacterName() and false == playerActorProxyWrapper:get():isFlashBanged() or true == isShowForAlli then
      return
    end
    local vectorC = {
      x,
      y,
      z,
      w
    }
    vectorC = playerActorProxyWrapper:getAllyPlayerColor()
    local allyColor = 4278190080 + math.floor(16711680 * vectorC.x) + math.floor(65280 * vectorC.y) + math.floor(255 * vectorC.z)
    if 0 < string.len(playerActorProxyWrapper:getUserNickname()) then
      if 0 < vectorC.w then
        nickName:SetFontColor(4293914607)
        nickName:useGlowFont(false)
        nickName:useGlowFont(true, "BaseFont_10_Glow", allyColor)
      else
        nickName:SetFontColor(4293914607)
        nickName:useGlowFont(false)
        nickName:useGlowFont(true, "BaseFont_10_Glow", 4278190080)
      end
      nickName:SetText(playerActorProxyWrapper:getUserNickname())
      nickName:SetShow(true)
    end
  elseif 0 < string.len(actorProxyWrapper:getCharacterTitle()) then
    nickName:SetText(actorProxyWrapper:getCharacterTitle())
    nickName:SetSpanSize(0, 20)
    nickName:SetShow(true)
    nickName:useGlowFont(false)
  end
end
local settingFirstTalk = function(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  local firstTalk = UI.getChildControl(targetPanel, "Static_FirstTalk")
  if nil == firstTalk then
    return
  end
  local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
  if nil == npcActorProxyWrapper then
    return
  end
  firstTalk:SetShow(npcActorProxyWrapper:get():getFirstTalkable())
  insertedArray:push_back(firstTalk)
end
local settingImportantTalk = function(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  local importantTalk = UI.getChildControl(targetPanel, "Static_ImportantTalk")
  if nil == importantTalk then
    return
  end
  local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
  if nil == npcActorProxyWrapper then
    return
  end
  local isShow = npcActorProxyWrapper:get():getImportantTalk()
  importantTalk:SetShow(isShow)
  if isShow then
    insertedArray:push_back(importantTalk)
  end
end
local function settingOtherHeadIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  local characterKeyRaw = actorProxyWrapper:getCharacterKeyRaw()
  local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
  if nil == npcActorProxyWrapper then
    return
  end
  local npcData = getNpcInfoByCharacterKeyRaw(characterKeyRaw, npcActorProxyWrapper:get():getDialogIndex())
  if nil ~= npcData then
    for index = 0, CppEnums.SpawnType.eSpawnType_Count - 1 do
      local aControl = getControlProperty(targetPanel, index)
      local isOn = npcData:hasSpawnType(index)
      if nil ~= aControl then
        aControl:SetShow(false)
        if isOn then
          aControl:SetShow(true)
          insertedArray:push_back(aControl)
        end
      end
    end
  end
end
local guildTendencyColor = function(tendency)
  local r, g, b = 0, 0, 0
  local upValue = 300000
  local downValue = -1000000
  if tendency > 0 then
    local percents = tendency / upValue
    r = math.floor(255 - 255 * percents)
    g = math.floor(255 - 171 * percents)
    b = 255
  else
    local percents = tendency / downValue
    r = 255
    g = math.floor(255 - 255 * percents)
    b = math.floor(255 - 255 * percents)
  end
  local sumColorValue = 4278190080 + 65536 * r + 256 * g + b
  return sumColorValue
end
local nameTendencyColor = function(tendency)
  local r, g, b = 0, 0, 0
  local upValue = 300000
  local downValue = -1000000
  if tendency > 0 then
    local percents = tendency / upValue
    r = math.floor(203 - 203 * percents)
    g = math.floor(203 - 203 * percents)
    b = math.floor(203 + 52 * percents)
  else
    local percents = tendency / downValue
    r = math.floor(203 + 52 * percents)
    g = math.floor(203 - 203 * percents)
    b = math.floor(203 - 203 * percents)
  end
  local sumColorValue = 4278190080 + 65536 * r + 256 * g + b
  return sumColorValue
end
local setTierIcon = function(iconControl, textureName, iconIdx, leftX, topY, xCount, iconSize)
  iconControl:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Etc_04.dds")
  iconControl:SetShow(true)
  local x1, y1, x2, y2
  x1 = leftX + (iconSize + 1) * (iconIdx % xCount)
  y1 = topY + (iconSize + 1) * math.floor(iconIdx / xCount)
  x2 = x1 + iconSize
  y2 = y1 + iconSize
  x1, y1, x2, y2 = setTextureUV_Func(iconControl, x1, y1, x2, y2)
  iconControl:getBaseTexture():setUV(x1, y1, x2, y2)
  iconControl:setRenderTexture(iconControl:getBaseTexture())
end
local function settingStatTierIcon(actorKeyRaw, targetPanel, actorProxyWrapper)
  local tierIcon = UI.getChildControl(targetPanel, "Static_BPIcon")
  if nil == tierIcon then
    return
  end
  if false == _ContentsGroup_StatTierIcon then
    tierIcon:SetShow(false)
    return
  end
  actorProxyWrapper = getPlayerActor(actorKeyRaw)
  tierIcon:SetShow(false)
  if nil == actorProxyWrapper then
    return
  end
  local militiaTeamNo = actorProxyWrapper:get():getVolunteerTeamNoForLua()
  local isMilitia = actorProxyWrapper:get():isVolunteer()
  if militiaTeamNo > 0 and true == isMilitia then
    return
  end
  local totalStatValue = actorProxyWrapper:get():getTotalStatValue()
  local tier = ToClient_GetHighTierByTotalStat(totalStatValue)
  if tier < 1 or tier > ToClient_GetHighTierCount() then
    return
  end
  if false == actorProxyWrapper:get():isSelfPlayer() then
    local isShowForAlli = false
    if false == actorProxyWrapper:get():getShowTotalStatTier() then
      return
    end
    if true == actorProxyWrapper:get():isHideCharacterName() and true == actorProxyWrapper:get():isShowNameWhenCamouflage() then
      isShowForAlli = true
      return
    end
    if actorProxyWrapper:get():isHideCharacterName() and false == actorProxyWrapper:get():isFlashBanged() or true == isShowForAlli then
      return
    end
  end
  if false == actorProxyWrapper:get():isFlashBanged() and false == actorProxyWrapper:get():isHideCharacterName() and true == actorProxyWrapper:get():isEquipCamouflage() and actorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
    tierIcon:SetMonoTone(true)
  elseif false == actorProxyWrapper:get():isFlashBanged() and true == actorProxyWrapper:get():isConcealCharacter() then
    tierIcon:SetMonoTone(true)
  else
    tierIcon:SetMonoTone(false)
  end
  setTierIcon(tierIcon, "new_ui_common_forlua/default/Default_Etc_04.dds", 3 - tier, 225, 142, 3, 42)
  tierIcon:SetShow(true)
end
local function settingGuildInfo(actorKeyRaw, targetPanel, actorProxyWrapper)
  if nil == targetPanel then
    return
  end
  if false == actorProxyWrapper:get():isPlayer() then
    return
  end
  local guildName = UI.getChildControl(targetPanel, "CharacterGuild")
  local guildMark = UI.getChildControl(targetPanel, "Static_GuildMark")
  local guildOccupyIcon = UI.getChildControl(targetPanel, "Static_Icon_GuildMaster")
  local guildBack = UI.getChildControl(targetPanel, "Static_GuildBackGround")
  if nil == guildName or nil == guildMark or nil == guildOccupyIcon or nil == guildBack then
    return
  end
  guildOccupyIcon:SetIgnore(true)
  guildOccupyIcon:SetShow(false)
  local guildSpan = guildMark:GetSpanSize()
  guildOccupyIcon:SetSpanSize(guildSpan.x - guildOccupyIcon:GetSizeX() / 2, 40)
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  if nil == playerActorProxy then
    return
  end
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if actorProxy:isPlayer() then
    local militiaTeamNo = actorProxy:getVolunteerTeamNoForLua()
    local isMilitia = playerActorProxy:isVolunteer()
    if militiaTeamNo > 0 and true == isMilitia then
      guildName:SetShow(false)
      guildMark:SetShow(false)
      guildBack:SetShow(false)
      return
    end
  end
  local hasGuild = playerActorProxy:isGuildMember() and (false == playerActorProxy:isHideGuildName() or playerActorProxy:isFlashBanged())
  if false == playerActorProxy:isFlashBanged() and false == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
    guildName:SetMonoTone(true)
    guildMark:SetMonoTone(true)
    guildBack:SetMonoTone(true)
  elseif false == playerActorProxy:isFlashBanged() and true == playerActorProxy:isConcealCharacter() then
    guildName:SetMonoTone(true)
    guildMark:SetMonoTone(true)
    guildBack:SetMonoTone(true)
  else
    guildName:SetMonoTone(false)
    guildMark:SetMonoTone(false)
    guildBack:SetMonoTone(false)
  end
  local isShowForAlli = false
  if true == playerActorProxyWrapper:get():isHideCharacterName() and true == playerActorProxyWrapper:get():isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
    isShowForAlli = true
  end
  if false == hasGuild or true == isShowForAlli then
    guildName:SetShow(false)
    guildMark:SetShow(false)
    guildBack:SetShow(false)
    return
  else
    guildName:SetShow(hasGuild)
    guildMark:SetShow(hasGuild)
    guildBack:SetShow(hasGuild)
  end
  if hasGuild then
    local isAllianceMember = playerActorProxy:isGuildAllianceMember()
    local isSiegeBeingChannel = ToClient_IsAnySiegeBeingOfMyChannel()
    local isGuildTeamBattleAttend = playerActorProxy:isGuildTeamBattleAttend()
    local guildNameText = ""
    if true == isAllianceMember and (true == isSiegeBeingChannel or true == isGuildTeamBattleAttend) then
      guildNameText = playerActorProxyWrapper:getGuildAllianceName()
      if "" == guildNameText then
        guildNameText = playerActorProxyWrapper:getGuildName()
      end
    else
      guildNameText = playerActorProxyWrapper:getGuildName()
    end
    guildName:useGlowFont(false)
    guildName:SetFontColor(4293914607)
    guildName:useGlowFont(true, "BaseFont_10_Glow", 4279004349)
    local guildNo = 0
    if true == isAllianceMember and (true == isSiegeBeingChannel or true == isGuildTeamBattleAttend) then
      guildNo = playerActorProxyWrapper:getGuildAllianceNo_s64()
    else
      guildNo = playerActorProxyWrapper:getGuildNo_s64()
    end
    local guildGrade = ToClient_getGuildGrade(guildNo)
    local isbadGuildName = playerActorProxyWrapper:isBadNameFlag(guildNo)
    if CppEnums.GuildGrade.GuildGrade_Clan == guildGrade then
      guildMark:SetShow(false)
      guildBack:SetShow(false)
    else
    end
    if false == isbadGuildName then
      guildName:SetText("<" .. guildNameText .. ">")
    else
      guildName:SetText("<" .. PAGetString(Defines.StringSheet_GAME, "LUA_GUILD_TEXT_IMPROPERGUILDNAME") .. ">")
    end
    local hasOccupyTerritory = playerActorProxy:isOccupyTerritory()
    if hasOccupyTerritory then
      guildOccupyIcon:SetShow(true)
      guildOccupyIcon:SetMonoTone(false)
    else
      local allianceCache = 0
      if true == isAllianceMember then
        allianceCache = playerActorProxyWrapper:getGuildAllianceNo_s64()
      else
        allianceCache = playerActorProxyWrapper:getGuildNo_s64()
      end
      local hasSiege = ToClient_hasOccupyingMajorSiege(allianceCache)
      if true == hasSiege then
        guildOccupyIcon:SetShow(true)
        guildOccupyIcon:SetMonoTone(true)
      else
        guildOccupyIcon:SetShow(false)
        guildOccupyIcon:SetMonoTone(false)
      end
    end
    local isSet = setGuildTexture(actorKeyRaw, guildMark)
    if false == isSet then
      guildMarkInit(guildMark)
    else
      guildMark:getBaseTexture():setUV(0, 0, 1, 1)
      guildMark:setRenderTexture(guildMark:getBaseTexture())
    end
    if playerActorProxy:isGuildAllianceChair() then
      guildBack:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Etc_00.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(guildBack, 1, 1, 43, 43)
      guildBack:getBaseTexture():setUV(x1, y1, x2, y2)
      guildBack:setRenderTexture(guildBack:getBaseTexture())
    elseif playerActorProxy:isGuildMaster() then
      guildBack:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Etc_00.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(guildBack, 87, 1, 129, 43)
      guildBack:getBaseTexture():setUV(x1, y1, x2, y2)
      guildBack:setRenderTexture(guildBack:getBaseTexture())
    elseif playerActorProxy:isGuildSubMaster() then
      guildBack:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Etc_00.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(guildBack, 44, 1, 86, 43)
      guildBack:getBaseTexture():setUV(x1, y1, x2, y2)
      guildBack:setRenderTexture(guildBack:getBaseTexture())
    else
      guildBack:ChangeTextureInfoNameAsync("")
    end
  else
    guildOccupyIcon:SetShow(false)
    guildMarkInit(guildMark)
  end
end
local function settingMonsterName(actorKeyRaw, targetPanel, actorProxyWrapper)
  local nameTag = UI.getChildControl(targetPanel, "CharacterName")
  if nil == nameTag then
    return
  end
  local monsterActorProxyWrapper = getMonsterActor(actorKeyRaw)
  if nil == monsterActorProxyWrapper then
    return
  end
  local selfPlayerActorProxyWrapper = getSelfPlayer()
  if true == ToClient_IsDevelopment() then
    local selfPlayerAttackAwakenValue = ToClient_getAwakenOffence()
    local selfPlayerAttackOffenceValue = ToClient_getOffence()
    local selfPlayerOffence
    if selfPlayerAttackAwakenValue > selfPlayerAttackOffenceValue then
      selfPlayerOffence = selfPlayerAttackAwakenValue
    else
      selfPlayerOffence = selfPlayerAttackOffenceValue
    end
    local monsterDeffence = monsterActorProxyWrapper:getDeffence(selfPlayerActorProxyWrapper:getMainAttckType())
    setMonsterNameColor_Stat(selfPlayerOffence, monsterDeffence, nameTag, monsterActorProxyWrapper:get():isDarkSpiritMonster())
  else
    local monsterLevel = monsterActorProxyWrapper:get():getCharacterStaticStatus().level
    local selfPlayerLevel = selfPlayerActorProxyWrapper:get():getLevel()
    setMonsterNameColor_Level(selfPlayerLevel, monsterLevel, nameTag, monsterActorProxyWrapper:get():isDarkSpiritMonster())
  end
end
local function settingLifeRankIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  if false == actorProxyWrapper:get():isPlayer() then
    return
  end
  if lifeContentCount <= 0 then
    return
  end
  if 0 < ToClient_GetMyTeamNoLocalWar() or true == ToClient_IsMyselfInEntryUser() then
    return
  end
  local isRankShow = ToClient_getLifeRankNameTag()
  local lifeRankIcon = {}
  for i = 0, lifeContentCount - 1 do
    lifeRankIcon[i] = nil
    lifeRankIcon[i] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_" .. i)
    if nil == lifeRankIcon[i] then
      return
    end
    lifeRankIcon[i]:SetShow(false)
  end
  local iconSizeX = lifeRankIcon[0]:GetSizeX()
  local iconGap = 5
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  if nil == playerActorProxy then
    return
  end
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if actorProxy:isPlayer() then
    local militiaTeamNo = actorProxy:getVolunteerTeamNoForLua()
    local isMilitia = playerActorProxy:isVolunteer()
    if militiaTeamNo > 0 and true == isMilitia then
      return
    end
  end
  local hasContentRank = 0
  for lifeContentIndex = 0, lifeContent.sail do
    local hasRank = FromClient_GetTopRankListForNameTag():hasRank(lifeContentIndex, actorKeyRaw)
    local rankNumer = 0
    if FGlobal_LifeRanking_CheckEnAble(lifeContentIndex) and true == hasRank and lifeContentIndex < 10 then
      local rankNumer = FromClient_GetTopRankListForNameTag():getRank(lifeContentIndex, actorKeyRaw) + 1
      lifeContent[lifeContentIndex][rankNumer] = rankNumer
      lifeRankIcon[lifeContentIndex]:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/RankingIcon_00.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(lifeRankIcon[lifeContentIndex], lifeRankSetTexture[lifeContentIndex][rankNumer].x1, lifeRankSetTexture[lifeContentIndex][rankNumer].y1, lifeRankSetTexture[lifeContentIndex][rankNumer].x2, lifeRankSetTexture[lifeContentIndex][rankNumer].y2)
      lifeRankIcon[lifeContentIndex]:getBaseTexture():setUV(x1, y1, x2, y2)
      lifeRankIcon[lifeContentIndex]:setRenderTexture(lifeRankIcon[lifeContentIndex]:getBaseTexture())
      if false == playerActorProxy:isFlashBanged() and false == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
        lifeRankIcon[lifeContentIndex]:SetMonoTone(true)
      elseif false == playerActorProxy:isFlashBanged() and true == playerActorProxy:isConcealCharacter() then
        lifeRankIcon[lifeContentIndex]:SetMonoTone(true)
      else
        lifeRankIcon[lifeContentIndex]:SetMonoTone(false)
      end
      local isShowForAlli = false
      if true == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
        isShowForAlli = true
      end
      if playerActorProxy:isPlayer() and playerActorProxy:isHideCharacterName() and false == playerActorProxy:isFlashBanged() or true == isShowForAlli then
        lifeRankIcon[lifeContentIndex]:SetShow(false)
      else
        lifeRankIcon[lifeContentIndex]:SetShow(isRankShow)
      end
      insertedArray:push_back(lifeRankIcon[lifeContentIndex])
    end
  end
  local rankerType = 0
  for lifeContentIndex = lifeContent.combat, lifeContent.battleField do
    hasContentRank = FromClient_GetTopRankListForNameTag():hasContentsRank(rankerType, actorKeyRaw)
    if FGlobal_LifeRanking_CheckEnAble(lifeContentIndex) and true == hasContentRank and lifeContentIndex >= 10 then
      local rankNumer = FromClient_GetTopRankListForNameTag():getContentsRank(rankerType, actorKeyRaw) + 1
      lifeContent[lifeContentIndex][rankNumer] = rankNumer
      lifeRankIcon[lifeContentIndex]:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/RankingIcon_00.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(lifeRankIcon[lifeContentIndex], lifeRankSetTexture[lifeContentIndex][rankNumer].x1, lifeRankSetTexture[lifeContentIndex][rankNumer].y1, lifeRankSetTexture[lifeContentIndex][rankNumer].x2, lifeRankSetTexture[lifeContentIndex][rankNumer].y2)
      lifeRankIcon[lifeContentIndex]:getBaseTexture():setUV(x1, y1, x2, y2)
      lifeRankIcon[lifeContentIndex]:setRenderTexture(lifeRankIcon[lifeContentIndex]:getBaseTexture())
      if false == playerActorProxy:isFlashBanged() and false == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
        lifeRankIcon[lifeContentIndex]:SetMonoTone(true)
      elseif false == playerActorProxy:isFlashBanged() and true == playerActorProxy:isConcealCharacter() then
        lifeRankIcon[lifeContentIndex]:SetMonoTone(true)
      else
        lifeRankIcon[lifeContentIndex]:SetMonoTone(false)
      end
      local isShowForAlli = false
      if true == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
        isShowForAlli = true
      end
      if playerActorProxy:isPlayer() and playerActorProxy:isHideCharacterName() and false == playerActorProxy:isFlashBanged() or true == isShowForAlli then
        lifeRankIcon[lifeContentIndex]:SetShow(false)
      else
        lifeRankIcon[lifeContentIndex]:SetShow(isRankShow)
      end
      insertedArray:push_back(lifeRankIcon[lifeContentIndex])
    end
    rankerType = rankerType + 1
  end
  local matchType = 0
  local hasMatchRank = 0
  local isEnableContentsPvP = ToClient_IsContentsGroupOpen("38")
  hasMatchRank = FromClient_GetTopRankListForNameTag():hasMatchRank(matchType, actorKeyRaw)
  if true == hasMatchRank and isEnableContentsPvP then
    local rankNumer = FromClient_GetTopRankListForNameTag():getMatchRank(matchType, actorKeyRaw) + 1
    lifeContent[lifeContent.match][rankNumer] = rankNumer
    lifeRankIcon[lifeContent.match]:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/RankingIcon_00.dds")
    local x1, y1, x2, y2 = setTextureUV_Func(lifeRankIcon[lifeContent.match], lifeRankSetTexture[lifeContent.match][rankNumer].x1, lifeRankSetTexture[lifeContent.match][rankNumer].y1, lifeRankSetTexture[lifeContent.match][rankNumer].x2, lifeRankSetTexture[lifeContent.match][rankNumer].y2)
    lifeRankIcon[lifeContent.match]:getBaseTexture():setUV(x1, y1, x2, y2)
    lifeRankIcon[lifeContent.match]:setRenderTexture(lifeRankIcon[lifeContent.match]:getBaseTexture())
    if false == playerActorProxy:isFlashBanged() and false == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isEquipCamouflage() and playerActorProxyWrapper:getGuildNo_s64() == getSelfPlayer():getGuildNo_s64() then
      lifeRankIcon[lifeContent.match]:SetMonoTone(true)
    elseif false == playerActorProxy:isFlashBanged() and true == playerActorProxy:isConcealCharacter() then
      lifeRankIcon[lifeContent.match]:SetMonoTone(true)
    else
      lifeRankIcon[lifeContent.match]:SetMonoTone(false)
    end
    local isShowForAlli = false
    if true == playerActorProxy:isHideCharacterName() and true == playerActorProxy:isShowNameWhenCamouflage() and getSelfPlayer():getActorKey() ~= playerActorProxyWrapper:getActorKey() then
      isShowForAlli = true
    end
    if playerActorProxy:isPlayer() and playerActorProxy:isHideCharacterName() and false == playerActorProxy:isFlashBanged() or true == isShowForAlli then
      lifeRankIcon[lifeContent.match]:SetShow(false)
    else
      lifeRankIcon[lifeContent.match]:SetShow(isRankShow)
    end
    insertedArray:push_back(lifeRankIcon[lifeContent.match])
  end
  local spanSizeY = 40
  local hasGuild = playerActorProxy:isGuildMember() and (false == playerActorProxy:isHideGuildName() or playerActorProxy:isFlashBanged())
  if hasGuild then
    spanSizeY = spanSizeY + 20
  end
  if playerActorProxy:isPlayer() and playerActorProxyWrapper:checkToTitleKey() then
    spanSizeY = spanSizeY + 20
  end
  sortCenterX(insertedArray)
end
local function settingPlayerName(actorKeyRaw, targetPanel, actorProxyWrapper)
  local nameTag = UI.getChildControl(targetPanel, "CharacterName")
  if nil == nameTag then
    return
  end
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  local playerTendency = playerActorProxy:getTendency()
  if playerActorProxy:isPvpEnable() then
    nameTag:useGlowFont(false)
    nameTag:SetFontColor(4293914607)
    nameTag:useGlowFont(true, "BaseFont_10_Glow", nameTendencyColor(playerTendency))
  else
    nameTag:useGlowFont(false)
    nameTag:SetFontColor(4294574047)
    nameTag:useGlowFont(true, "BaseFont_10_Glow", 4283917312)
  end
end
function FromClient_PlayerTotalStat_Changed_Handler(actorKey, totalStatValue)
  local actorProxyWrapper = getActor(actorKey)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingStatTierIcon(actorKey, panel, actorProxyWrapper)
end
function isShowInstallationEnduranceType(installationType)
  if installationType == CppEnums.InstallationType.eType_Mortar or installationType == CppEnums.InstallationType.eType_Anvil or installationType == CppEnums.InstallationType.eType_Stump or installationType == CppEnums.InstallationType.eType_FireBowl or installationType == CppEnums.InstallationType.eType_Buff or installationType == CppEnums.InstallationType.eType_Alchemy or installationType == CppEnums.InstallationType.eType_Havest or installationType == CppEnums.InstallationType.eType_Bookcase or installationType == CppEnums.InstallationType.eType_Cooking or installationType == CppEnums.InstallationType.eType_Bed or installationType == CppEnums.InstallationType.eType_LivestockHarvest then
    return true
  else
    return false
  end
end
local isFourty = false
local isTwenty = false
local furnitureCheck = false
function ShowUseTab_Func()
  if nil == getSelfPlayer() then
    return
  end
  local myLevel = getSelfPlayer():get():getLevel()
  if myLevel > 30 then
    return
  end
  local targetPanel = getSelfPlayer():get():getUIPanel()
  if nil == targetPanel then
    return
  end
  local useTab = UI.getChildControl(Panel_OnlyPerframeUsed, "StaticText_UseTab")
  local x = getScreenSizeX() * 0.5 - useTab:GetSizeX()
  local y = getScreenSizeY() * 0.5 + useTab:GetSizeY() * 7
  useTab:SetPosX(x)
  useTab:SetPosY(y)
  if IsChecked_WeaponOut == true then
    useTab:SetText(PAGetString(Defines.StringSheet_RESOURCE, "UI_ACTOR_NAMETAG_USETAB"))
    useTab:SetShow(true)
  else
    useTab:SetShow(false)
  end
end
function HideUseTab_Func()
  local targetPanel = getSelfPlayer():get():getUIPanel()
  if nil == targetPanel then
    return
  end
  local useTab = UI.getChildControl(Panel_OnlyPerframeUsed, "StaticText_UseTab")
  useTab:SetShow(false)
end
function FGlobal_ShowUseLantern(param)
  local targetPanel = getSelfPlayer():get():getUIPanel()
  if nil == targetPanel then
    return
  end
  local useLantern = UI.getChildControl(Panel_OnlyPerframeUsed, "StaticText_UseLantern")
  local x = getScreenSizeX() * 0.5 - useLantern:GetSizeX()
  local y = getScreenSizeY() * 0.5 + useLantern:GetSizeY() * 7
  useLantern:SetPosX(x)
  useLantern:SetPosY(y)
  if true == param then
    useLantern:SetShow(true)
  else
    useLantern:SetShow(false)
  end
end
local function settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  local hpBack, hpLater, hpMain
  if actorProxy:isKingOrLordTent() then
    hpBack = UI.getChildControl(targetPanel, "KingOrLordTentProgressBack")
    hpLater = UI.getChildControl(targetPanel, "KingOrLordTentProgress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "KingOrLordTentHPGageProgress")
  elseif actorProxy:isLargeHpBarCharacter() then
    hpBack = UI.getChildControl(targetPanel, "KingOrLordTentProgressBack")
    hpLater = UI.getChildControl(targetPanel, "KingOrLordTentProgress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "KingOrLordTentHPGageProgress")
  else
    hpBack = UI.getChildControl(targetPanel, "ProgressBack")
    hpLater = UI.getChildControl(targetPanel, "Progress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "CharacterHPGageProgress")
  end
  local characterStaticStatus = actorProxy:getCharacterStaticStatus()
  if nil == hpBack or nil == hpLater or nil == hpMain or nil == characterStaticStatus then
    return
  end
  hpMain:ResetVertexAni(true)
  hpLater:ResetVertexAni(true)
  hpMain:SetAlpha(1)
  hpLater:SetAlpha(1)
  if actorProxy:isSelfPlayer() then
    local usePotion = UI.getChildControl(targetPanel, "StaticText_UsePotion")
    usePotion:SetShow(false)
  elseif true == actorProxy:isPlayer() then
    CharacterNameTag_SetHpBarContainer(actorKeyRaw, actorProxy, targetPanel)
  end
end
local beforeMaxHp = {}
local rulerControl = {}
function checkAndCreateRular(rularCount, targetPanel, actorKeyRaw)
  if nil == rulerControl[actorKeyRaw] then
    rulerControl[actorKeyRaw] = {}
    rulerControl[actorKeyRaw].createRulerCount = 0
    if nil ~= targetPanel then
      rulerControl[actorKeyRaw].panel = targetPanel:GetID()
    end
  end
  if rularCount == rulerControl[actorKeyRaw].createRulerCount then
    return false
  end
  rulerControl[actorKeyRaw].rularParent = UI.getChildControl(targetPanel, "Static_Rular")
  for index = 0, rularCount - 1 do
    if index >= rulerControl[actorKeyRaw].createRulerCount then
      if 9 == index % 10 then
        rulerControl[actorKeyRaw][index] = UI.createAndCopyBasePropertyControl(targetPanel, "Static_1000Stick", rulerControl[actorKeyRaw].rularParent, "RulerControl_" .. index)
      else
        rulerControl[actorKeyRaw][index] = UI.createAndCopyBasePropertyControl(targetPanel, "Static_100Stick", rulerControl[actorKeyRaw].rularParent, "RulerControl_" .. index)
      end
    end
  end
  for index = 0, rulerControl[actorKeyRaw].createRulerCount - 1 do
    rulerControl[actorKeyRaw][index]:SetShow(false)
  end
  rulerControl[actorKeyRaw].createRulerCount = rularCount
  return true
end
function checkAvailableRular(index, rularCount)
  if rularCount > 1000 then
    return false
  elseif rularCount >= 100 then
    if 9 == index % 10 then
      return true
    end
  elseif rularCount >= 40 then
    if 1 == index % 2 then
      return true
    end
  else
    return true
  end
  return false
end
function checkChagnedNameTagPanel(actorKeyRaw, targetPanel, hpMain, rularParent)
  if nil == beforeMaxHp[actorKeyRaw] then
    return false
  end
  if nil == rulerControl[actorKeyRaw] then
    return false
  end
  if nil == rulerControl[actorKeyRaw].panel or nil == targetPanel then
    return false
  end
  if rulerControl[actorKeyRaw].panel ~= targetPanel:GetID() then
    rularParent:MoveChilds(rularParent:GetID(), rulerControl[actorKeyRaw].rularParent)
    rularParent:SetPosX(hpMain:GetPosX())
    rularParent:SetPosY(hpMain:GetPosY())
    rularParent:SetShow(hpMain:GetShow())
    rulerControl[actorKeyRaw].panel = targetPanel:GetID()
    rulerControl[actorKeyRaw].rularParent = rularParent
    rulerControl[actorKeyRaw].hpMain = hpMain
    return false
  end
  return false
end
function GameOptionApply_CharacterNameTag_Ruler(isShow)
  if nil == rulerControl then
    return
  end
  for _, control in pairs(rulerControl) do
    if false == isShow then
      if nil ~= control.rularParent then
        control.rularParent:SetShow(isShow)
      end
    elseif nil ~= control.hpMain and nil ~= control.rularParent then
      control.rularParent:SetShow(control.hpMain:GetShow())
    end
  end
end
function GameOptionApply_CharacterNameTag_StackHpBar(isShow)
  if nil == _characterHpBarContainer then
    return isShow
  end
  for _, hpBarData in pairs(_characterHpBarContainer) do
    if nil ~= hpBarData.stackHpBar then
      hpBarData.stackHpBar:SetShow(false)
      hpBarData.stackHpBarBackColor:SetShow(false)
      hpBarData.hpBack:SetShow(false)
      hpBarData.hpPointer:SetShow(false)
    end
  end
  _characterHpBarContainer = {}
  return isShow
end
local CharacterNameTag_SetRuler = function(maxHp, targetPanel, actorKeyRaw)
end
local function settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if false == (actorProxy:isInstallationActor() or actorProxy:isMonster() or actorProxy:isSelfPlayer() or actorProxy:isPlayer() or actorProxy:isNpc() or actorProxy:isHouseHold() or actorProxy:isVehicle() or actorProxy:isInstanceObject()) then
    return
  end
  local isColorBlindMode = ToClient_getGameUIManagerWrapper():getLuaCacheDataListNumber(CppEnums.GlobalUIOptionType.ColorBlindMode)
  local hpBack, hpLater, hpMain
  if actorProxy:isKingOrLordTent() then
    hpBack = UI.getChildControl(targetPanel, "KingOrLordTentProgressBack")
    hpLater = UI.getChildControl(targetPanel, "KingOrLordTentProgress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "KingOrLordTentHPGageProgress")
  elseif actorProxy:isLargeHpBarCharacter() then
    hpBack = UI.getChildControl(targetPanel, "KingOrLordTentProgressBack")
    hpLater = UI.getChildControl(targetPanel, "KingOrLordTentProgress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "KingOrLordTentHPGageProgress")
  else
    hpBack = UI.getChildControl(targetPanel, "ProgressBack")
    hpLater = UI.getChildControl(targetPanel, "Progress2_HpLater")
    hpMain = UI.getChildControl(targetPanel, "CharacterHPGageProgress")
  end
  local characterStaticStatus = actorProxy:getCharacterStaticStatus()
  if nil == hpBack or nil == hpLater or nil == hpMain or nil == characterStaticStatus then
    return
  end
  if characterStaticStatus._isHiddenHp and not actorProxy:isInstallationActor() then
    hpBack:SetShow(false)
    hpLater:SetShow(false)
    hpMain:SetShow(false)
    return
  end
  if actorProxy:isInstallationActor() then
    local installationActorWrapper = getInstallationActor(actorKeyRaw)
    hpBack:SetShow(false)
    hpLater:SetShow(false)
    hpMain:SetShow(false)
    if Panel_Housing:IsShow() then
      return
    end
    local installationType = installationActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():getInstallationType()
    if false == isShowInstallationEnduranceType(installationType) then
      return
    end
    if toInt64(0, 0) ~= installationActorWrapper:getOwnerHouseholdNo_s64() then
      if installationActorWrapper:isHavestInstallation() then
        local prevRate = hpMain:GetProgressRate()
        local rate = installationActorWrapper:getHarvestTotalGrowRate()
        if rate > 1 then
          rate = 1
        elseif rate < 0 then
          rate = 0
        end
        rate = rate * 100
        local progressingInfo = installationActorWrapper:get():getInstallationProgressingInfo()
        local isWarning = false
        if nil ~= progressingInfo then
          isWarning = progressingInfo:getNeedLop() or progressingInfo:getNeedPestControl()
        end
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        local x1, y1, x2, y2
        if isWarning then
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
        else
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 96, 255, 99)
        end
        hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
        hpMain:setRenderTexture(hpMain:getBaseTexture())
        hpMain:SetProgressRate(rate)
        hpLater:SetProgressRate(rate)
        hpMain:SetCurrentProgressRate(rate)
        hpLater:SetCurrentProgressRate(rate)
        hpBack:SetShow(true)
        hpLater:SetShow(true)
        hpMain:SetShow(true)
      else
        local curEndurance = installationActorWrapper:getEndurance()
        local maxEndurance = installationActorWrapper:getMaxEndurance()
        local prevRate = hpMain:GetProgressRate()
        local rate = curEndurance / maxEndurance * 100
        if prevRate > rate then
          hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
          hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
        elseif prevRate < rate then
          hpMain:ResetVertexAni(true)
          hpLater:ResetVertexAni(true)
          hpMain:SetAlpha(1)
          hpLater:SetAlpha(1)
        end
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        if rate < 5 then
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
        else
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 96, 255, 99)
        end
        hpMain:SetProgressRate(rate)
        hpLater:SetProgressRate(rate)
        if housing_isInstallMode() or true == furnitureCheck then
          hpBack:SetShow(true)
          hpLater:SetShow(true)
          hpMain:SetShow(true)
        else
          hpBack:SetShow(false)
          hpLater:SetShow(false)
          hpMain:SetShow(false)
        end
      end
    end
  elseif actorProxy:isLargeHpBarCharacter() then
    local prevRate = hpMain:GetProgressRate()
    local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
    if hpLater:GetCurrentProgressRate() < hpMain:GetCurrentProgressRate() then
      hpLater:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
      hpMain:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
    end
    if prevRate > hpRate then
      hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
      hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
    elseif prevRate < hpRate then
      hpMain:ResetVertexAni(true)
      hpLater:ResetVertexAni(true)
      hpMain:SetAlpha(1)
      hpLater:SetAlpha(1)
    end
    hpMain:SetProgressRate(hpRate)
    hpLater:SetProgressRate(hpRate)
    hpBack:SetShow(true)
    hpLater:SetShow(true)
    hpMain:SetShow(true)
  elseif actorProxy:isMonster() then
    local prevRate = hpMain:GetProgressRate()
    local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
    local characterActorProxyWrapper = getCharacterActor(actorKeyRaw)
    hpBack:SetShow(true)
    hpLater:SetShow(true)
    hpMain:SetShow(true)
    
    local aCondition = checkActiveCondition(characterActorProxyWrapper:getCharacterKey())

    if not aCondition and g_ShowHpBarWithoutKnowledge then
      aCondition = true
    end

    if aCondition then
      hpMain:SetProgressRate(hpRate)
      hpLater:SetProgressRate(hpRate)
      if prevRate > hpRate then
        hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
        hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
      elseif prevRate < hpRate then
        if hpLater:GetCurrentProgressRate() < hpMain:GetCurrentProgressRate() then
          hpLater:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
        end
        hpMain:ResetVertexAni(true)
        hpLater:ResetVertexAni(true)
        hpMain:SetAlpha(1)
        hpLater:SetAlpha(1)
      end
      hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
      local x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 96, 255, 99)
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      hpMain:setRenderTexture(hpMain:getBaseTexture())
    else
      local x1, y1, x2, y2
      hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
      if hpRate > 75 then
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 96, 255, 99)
      elseif hpRate > 50 then
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 100, 255, 103)
      elseif hpRate > 25 then
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 104, 255, 107)
      elseif hpRate > 10 then
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 108, 255, 111)
      elseif hpRate > 5 then
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
      else
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
      end
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      hpMain:setRenderTexture(hpMain:getBaseTexture())
      hpMain:SetProgressRate(100)
      hpLater:SetProgressRate(100)
      hpMain:SetCurrentProgressRate(100)
      hpLater:SetCurrentProgressRate(100)
    end
  elseif actorProxy:isSelfPlayer() then
    local hpAlert = UI.getChildControl(targetPanel, "Static_nameTagGaugeAlert")
    local usePotion = UI.getChildControl(targetPanel, "StaticText_UsePotion")
    hpBack:SetShow(true)
    hpLater:SetShow(true)
    hpMain:SetShow(true)
    local x1, y1, x2, y2
    if 0 < RequestParty_getPartyMemberCount() then
      hpMain:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Gauges.dds")
      x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 63, 233, 69)
    elseif 0 == isColorBlindMode then
      hpMain:ChangeTextureInfoNameAsync("New_UI_Common_forLua/Default/Default_Gauges.dds")
      x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 96, 255, 99)
    elseif 1 == isColorBlindMode then
      hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
      x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
    elseif 2 == isColorBlindMode then
      hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
      x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
    end
    hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
    local selfPlayerLevel = getSelfPlayer():get():getLevel()
    local prevRate = hpMain:GetProgressRate()
    local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
    if prevRate > hpRate then
      hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
      hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
    elseif prevRate < hpRate then
      hpMain:ResetVertexAni(true)
      hpLater:ResetVertexAni(true)
      hpMain:SetAlpha(1)
      hpLater:SetAlpha(1)
    end
    hpMain:SetProgressRate(hpRate)
    hpLater:SetProgressRate(hpRate)
    hpAlert:ResetVertexAni(true)
    local x1, y1, x2, y2
    if hpRate >= 40 then
      if 0 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
      elseif 1 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      elseif 2 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      end
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      usePotion:SetShow(false)
      hpMain:ResetVertexAni(true)
      hpMain:SetAlpha(1)
      hpAlert:SetShow(false)
    elseif hpRate >= 20 then
      if 0 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
      elseif 1 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      elseif 2 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      end
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      if selfPlayerLevel <= 15 then
        usePotion:SetShow(true)
      end
      hpMain:SetVertexAniRun("Ani_Color_Damage_40", true)
      hpAlert:SetShow(true)
      hpAlert:SetVertexAniRun("Ani_Color_nameTagAlertGauge0", true)
    else
      if 0 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
      elseif 1 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      elseif 2 == isColorBlindMode then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
      end
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      if selfPlayerLevel <= 15 then
        usePotion:SetShow(true)
      end
      hpMain:SetVertexAniRun("Ani_Color_Damage_20", true)
      hpAlert:SetShow(true)
      hpAlert:SetVertexAniRun("Ani_Color_nameTagAlertGauge1", true)
    end
    hpMain:setRenderTexture(hpMain:getBaseTexture())
  elseif actorProxy:isPlayer() then
    if false == _ContentsGroup_StackingHpBar then
      local prevRate = hpMain:GetProgressRate()
      local isParty = Requestparty_isPartyPlayer(actorKeyRaw)
      local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
      local isArenaAreaOrZone = playerActorProxyWrapper:get():isArenaAreaRegion() or playerActorProxyWrapper:get():isArenaZoneRegion() or playerActorProxyWrapper:get():isCompetitionDefined() or playerActorProxyWrapper:get():isGuildTeamBattleAttend()
      local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
      if prevRate > hpRate then
        hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
        hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
      elseif prevRate < hpRate then
        hpMain:ResetVertexAni(true)
        hpLater:ResetVertexAni(true)
        hpMain:SetAlpha(1)
        hpLater:SetAlpha(1)
      end
      hpMain:SetProgressRate(hpRate)
      hpLater:SetProgressRate(hpRate)
      local isShow = false == actorProxy:isHideTimeOver(hideTimeType.overHeadUI) or isParty or isArenaAreaOrZone
      hpMain:SetShow(true)
      hpBack:SetShow(isShow)
      hpLater:SetShow(isShow)
      hpMain:SetShow(isShow)
      local x1, y1, x2, y2
      if isParty then
        hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
        x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 63, 233, 69)
      else
        if 0 == isColorBlindMode then
          hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/default_gauges.dds")
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 206, 112, 255, 115)
        elseif 1 == isColorBlindMode then
          hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
        elseif 2 == isColorBlindMode then
          hpMain:ChangeTextureInfoNameAsync("new_ui_common_forlua/default/Default_Gauges_01.dds")
          x1, y1, x2, y2 = setTextureUV_Func(hpMain, 1, 247, 255, 250)
        end
        hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      end
      hpMain:getBaseTexture():setUV(x1, y1, x2, y2)
      hpMain:setRenderTexture(hpMain:getBaseTexture())
      CharacterNameTag_SetRuler(actorProxy:getMaxHp(), targetPanel, actorKeyRaw)
    else
      local isParty = Requestparty_isPartyPlayer(actorKeyRaw)
      local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
      local isArenaAreaOrZone = playerActorProxyWrapper:get():isArenaAreaRegion() or playerActorProxyWrapper:get():isArenaZoneRegion() or playerActorProxyWrapper:get():isCompetitionDefined() or playerActorProxyWrapper:get():isGuildTeamBattleAttend()
      local isShow = false == actorProxy:isHideTimeOver(hideTimeType.overHeadUI) or isParty or isArenaAreaOrZone
      local hpPointer = UI.getChildControl(targetPanel, "StaticText_HP")
      local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
      if true == GameOption_GetShowStackHp() and true == _ContentsGroup_StackingHpBar then
        hpBack = UI.getChildControl(targetPanel, "ProgressBack")
        hpMain = UI.getChildControl(targetPanel, "Progress2_StackHpBackColor")
        hpLater = UI.getChildControl(targetPanel, "CharacterHPGageProgress")
        hpBack:SetShow(isShow)
        hpLater:SetShow(isShow)
        hpMain:SetShow(isShow)
        hpPointer:SetShow(isShow)
        local pointerHalfSize = hpPointer:GetSizeX() * 0.5
        hpPointer:SetPosX(hpBack:GetPosX() + 0.01 * hpRate * hpBack:GetSizeX() - pointerHalfSize)
        if true == isShow then
          CharacterNameTag_SetHpBarContainer(actorKeyRaw, actorProxy, targetPanel)
          targetPanel:RegisterUpdateFunc("PaGlobal_WaitUntilHpBarChange_UpdateFunc")
        else
          CharacterNameTag_FreeHpBarContainer(actorKeyRaw)
        end
      else
        local prevRate = hpMain:GetProgressRate()
        hpBack:SetShow(isShow)
        hpLater:SetShow(isShow)
        hpMain:SetShow(isShow)
        hpPointer:SetShow(false)
        if true == isParty then
          hpMain:SetColor(_normalHpBarColor.partyMemeberColor)
        elseif 0 == isColorBlindMode then
          hpMain:SetColor(_normalHpBarColor.defaultColor)
        elseif 1 == isColorBlindMode then
          hpMain:SetColor(_normalHpBarColor.blindMode_Red)
        elseif 2 == isColorBlindMode then
          hpMain:SetColor(_normalHpBarColor.blindMode_Blue)
        end
        hpMain:SetAniSpeed(0)
        hpMain:SetProgressRate(hpRate)
        if true == _ContentsGroup_StackingHpBar then
          local data = {}
          data.stackHpBar = hpMain
          data.stackHpBarBackColor = hpLater
          data.hpBack = hpBack
          data.hpPointer = hpPointer
          _characterHpBarContainer[actorKeyRaw] = data
        end
      end
    end
  elseif actorProxy:isNpc() then
    local isShow = false
    local isFusionCore = actorProxy:getCharacterStaticStatus():isFusionCore()
    if true == isFusionCore then
      local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
      if npcActorProxyWrapper:getTeamNo_s64() == getSelfPlayer():getTeamNo_s64() then
        isShow = true
      end
    end
    if isShow then
      local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
      local prevRate = hpMain:GetProgressRate()
      if hpRate < prevRate then
        hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
        hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
      elseif hpRate > prevRate then
        hpMain:ResetVertexAni(true)
        hpLater:ResetVertexAni(true)
        hpMain:SetAlpha(1)
        hpLater:SetAlpha(1)
      end
      hpMain:SetProgressRate(hpRate)
      hpLater:SetProgressRate(hpRate)
    end
    hpBack:SetShow(isShow)
    hpLater:SetShow(isShow)
    hpMain:SetShow(isShow)
  elseif actorProxy:isHouseHold() then
    houseHoldActorWrapper = getHouseHoldActor(actorKeyRaw)
    if nil == houseHoldActorWrapper then
      return
    end
    if false == (houseHoldActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():isBarricade() or houseHoldActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():isKingOrLordTent() or houseHoldActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():isAdvancedBase()) then
      return
    end
    local prevRate = hpMain:GetProgressRate()
    local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
    if hpLater:GetCurrentProgressRate() < hpMain:GetCurrentProgressRate() then
      hpLater:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
      hpMain:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
    end
    if prevRate > hpRate then
      hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
      hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
    elseif prevRate < hpRate then
      hpMain:ResetVertexAni(true)
      hpLater:ResetVertexAni(true)
      hpMain:SetAlpha(1)
      hpLater:SetAlpha(1)
    end
    hpMain:SetProgressRate(hpRate)
    hpLater:SetProgressRate(hpRate)
    hpBack:SetShow(true)
    hpLater:SetShow(true)
    hpMain:SetShow(true)
  elseif actorProxy:isInstanceObject() then
    if actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isBarricade() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isHealingTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isObservatory() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isElephantBarn() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isRepairingTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isMineFactory() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isBombFactory() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isDistributor() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isSiegeTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isLargeSiegeTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isDefenceTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isSiegeTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isLargeSiegeTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isAdvancedBaseTower() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isTankFactory() or actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isSavageDefenceObject() then
      local prevRate = hpMain:GetProgressRate()
      local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
      hpMain:SetProgressRate(hpRate)
      hpLater:SetProgressRate(hpRate)
      if prevRate > hpRate then
        hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
        hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
      elseif prevRate < hpRate then
        if hpLater:GetCurrentProgressRate() < hpMain:GetCurrentProgressRate() then
          hpLater:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
        end
        hpMain:ResetVertexAni(true)
        hpLater:ResetVertexAni(true)
        hpMain:SetAlpha(1)
        hpLater:SetAlpha(1)
      end
      hpBack:SetShow(true)
      hpLater:SetShow(true)
      hpMain:SetShow(true)
    elseif actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus():isTrap() then
      hpBack:SetShow(false)
      hpLater:SetShow(false)
      hpMain:SetShow(false)
    end
  else
    if actorProxy:isVehicle() then
      local vehicleActorWrapper = getVehicleActorByProxy(actorProxy)
      if nil ~= vehicleActorWrapper and (CppEnums.VehicleType.Type_ThrowStone == vehicleActorWrapper:get():getVehicleType() or CppEnums.VehicleType.Type_ThrowFire == vehicleActorWrapper:get():getVehicleType() or CppEnums.VehicleType.Type_WoodenFence == vehicleActorWrapper:get():getVehicleType()) then
        _PA_LOG("LUA", "name show : " .. tostring(actorProxyWrapper:getName()))
        local prevRate = hpMain:GetProgressRate()
        local hpRate = actorProxy:getHp() * 100 / actorProxy:getMaxHp()
        hpMain:SetProgressRate(hpRate)
        hpLater:SetProgressRate(hpRate)
        if prevRate > hpRate then
          hpMain:SetVertexAniRun("Ani_Color_Damage_0", true)
          hpLater:SetVertexAniRun("Ani_Color_Damage_White", true)
        elseif prevRate < hpRate then
          if hpLater:GetCurrentProgressRate() < hpMain:GetCurrentProgressRate() then
            hpLater:SetCurrentProgressRate(hpMain:GetCurrentProgressRate())
          end
          hpMain:ResetVertexAni(true)
          hpLater:ResetVertexAni(true)
          hpMain:SetAlpha(1)
          hpLater:SetAlpha(1)
        end
        hpBack:SetShow(true)
        hpLater:SetShow(true)
        hpMain:SetShow(true)
      else
        hpBack:SetShow(false)
        hpLater:SetShow(false)
        hpMain:SetShow(false)
      end
    else
    end
  end
end
local function CharacterNameTag_HpBarUpdateCheck()
  for _, hpBarData in pairs(_characterHpBarContainer) do
    if nil ~= hpBarData then
      if hpBarData.currentHpIdx ~= hpBarData.targetHpIdx then
        hpBarData.stackHpBar:SetAniSpeed(1 / (math.abs(hpBarData.currentHpIdx - hpBarData.targetHpIdx) + 1))
        if hpBarData.currentHpIdx < hpBarData.targetHpIdx then
          hpBarData.stackHpBar:SetProgressRate(100)
        elseif hpBarData.targetHpIdx < hpBarData.currentHpIdx then
          hpBarData.stackHpBar:SetProgressRate(0)
        end
      end
      if hpBarData.currentHpIdx == hpBarData.targetHpIdx then
        hpBarData.stackHpBar:SetProgressRate(hpBarData.currentHpRate)
      elseif 100 <= hpBarData.stackHpBar:GetCurrentProgressRate() then
        hpBarData.currentHpIdx = hpBarData.currentHpIdx + 1
        if hpBarData.currentHpIdx >= _maxHpBarColorCount * 2 then
          hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
          hpBarData.stackHpBar:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
        else
          local colorValue = hpBarData.currentHpIdx % _maxHpBarColorCount
          local backColorValue = colorValue - 1
          if hpBarData.currentHpIdx <= 0 then
            backColorValue = -1
          elseif backColorValue < 0 then
            backColorValue = _maxHpBarColorCount - 1
          end
          hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[backColorValue])
          hpBarData.stackHpBar:SetColor(_stackHpBarColor[colorValue])
        end
        hpBarData.stackHpBar:SetProgressRate(0)
      elseif 0 >= hpBarData.stackHpBar:GetCurrentProgressRate() then
        hpBarData.currentHpIdx = hpBarData.currentHpIdx - 1
        hpBarData.stackHpBar:SetProgressRate(100)
        if hpBarData.currentHpIdx >= _maxHpBarColorCount * 2 then
          hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
          hpBarData.stackHpBar:SetColor(_stackHpBarColor[_maxHpBarColorCount - 1])
        else
          local colorValue = hpBarData.currentHpIdx % _maxHpBarColorCount
          local backColorValue = colorValue - 1
          if hpBarData.currentHpIdx <= 0 then
            backColorValue = -1
          elseif backColorValue < 0 then
            backColorValue = _maxHpBarColorCount - 1
          end
          hpBarData.stackHpBarBackColor:SetColor(_stackHpBarColor[backColorValue])
          hpBarData.stackHpBar:SetColor(_stackHpBarColor[colorValue])
        end
      end
    end
  end
end
function PaGlobal_WaitUntilHpBarChange_UpdateFunc()
  if true == GameOption_GetShowStackHp() and true == _ContentsGroup_StackingHpBar then
    CharacterNameTag_HpBarUpdateCheck()
  end
end
local function settingMpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  local isColorBlindMode = ToClient_getGameUIManagerWrapper():getLuaCacheDataListNumber(CppEnums.GlobalUIOptionType.ColorBlindMode)
  local mpBack = UI.getChildControl(targetPanel, "ProgressBack_ManaResource")
  local mpMain = UI.getChildControl(targetPanel, "Character_ManaResource")
  if nil == mpBack or nil == mpMain then
    return
  end
  local instanceObject = actorProxyWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus()
  if actorProxy:isSelfPlayer() then
    local playerWrapper = getSelfPlayer()
    local mp = playerWrapper:get():getMp()
    local maxMp = playerWrapper:get():getMaxMp()
    local mpRate = mp * 100 / maxMp
    mpMain:SetProgressRate(mpRate)
    mpMain:SetCurrentProgressRate(mpRate)
    local isEP_Character = UI_classType.ClassType_Ranger == playerWrapper:getClassType() or UI_classType.ClassType_Orange == playerWrapper:getClassType()
    local isFP_Character = UI_classType.ClassType_Warrior == playerWrapper:getClassType() or UI_classType.ClassType_Giant == playerWrapper:getClassType() or UI_classType.ClassType_BladeMaster == playerWrapper:getClassType() or UI_classType.ClassType_BladeMasterWomen == playerWrapper:getClassType() or UI_classType.ClassType_NinjaWomen == playerWrapper:getClassType() or UI_classType.ClassType_NinjaMan == playerWrapper:getClassType() or UI_classType.ClassType_Combattant == playerWrapper:getClassType() or UI_classType.ClassType_CombattantWomen == playerWrapper:getClassType() or UI_classType.ClassType_Lahn == playerWrapper:getClassType()
    local isBP_Character = UI_classType.ClassType_Valkyrie == playerWrapper:getClassType()
    local isOnlyDarkelf = UI_classType.ClassType_DarkElf == playerWrapper:getClassType()
    local isMP_Character = not isEP_Character and not isFP_Character and not isBP_Character and not isOnlyDarkelf
    if isEP_Character then
      mpMain:SetColor(_mpBarColor.ep_Character)
    elseif isFP_Character then
      mpMain:SetColor(_mpBarColor.fp_Character)
    elseif isBP_Character then
      mpMain:SetColor(_mpBarColor.bp_Character)
    elseif isOnlyDarkelf then
      mpMain:SetColor(_mpBarColor.darkelf)
    elseif isMP_Character then
      mpMain:SetColor(_mpBarColor.mp_Character)
    end
    if 0 ~= isColorBlindMode then
      mpMain:SetColor(Defines.Color.C_FFEE9900)
    end
    mpBack:SetShow(true)
    mpMain:SetShow(true)
  elseif actorProxy:isInstanceObject() then
    if instanceObject:isBarricade() or instanceObject:isHealingTower() or instanceObject:isObservatory() or instanceObject:isElephantBarn() or instanceObject:isRepairingTower() or instanceObject:isMineFactory() or instanceObject:isBombFactory() or instanceObject:isDistributor() or instanceObject:isSiegeTower() or instanceObject:isLargeSiegeTower() or instanceObject:isDefenceTower() or instanceObject:isAdvancedBaseTower() or instanceObject:isTankFactory() or instanceObject:isSavageDefenceObject() then
      local isShowMp = false
      local instanceObjectActorWrapper = getInstanceObjectActor(actorKeyRaw)
      if nil ~= instanceObjectActorWrapper then
        local objectSS = instanceObjectActorWrapper:getCharacterStaticStatusWrapper():getObjectStaticStatus()
        if instanceObjectActorWrapper:isActionType_BuildingStart() then
          isShowMp = true
        elseif objectSS:isElephantBarn() or objectSS:isObservatory() or objectSS:isSiegeTower() or objectSS:isLargeSiegeTower() or objectSS:isAdvancedBaseTower() or objectSS:isTankFactory() then
          isShowMp = true
        end
      end
      if true == isShowMp then
        local mp = actorProxyWrapper:get():getMp()
        local maxMp = actorProxyWrapper:get():getMaxMp()
        _PA_LOG("\236\156\160\237\157\165\236\139\160", "settingMpBar " .. tostring(mp) .. "/" .. tostring(maxMp))
        local mpRate = mp * 100 / maxMp
        mpMain:SetProgressRate(mpRate)
        mpMain:SetCurrentProgressRate(mpRate)
        mpMain:SetColor(Defines.Color.C_FFA3EF00)
        mpBack:SetShow(true)
        mpMain:SetShow(true)
      else
        mpBack:SetShow(false)
        mpMain:SetShow(false)
      end
    else
      mpBack:SetShow(false)
      mpMain:SetShow(false)
    end
  elseif actorProxy:isVehicle() then
    if actorProxy:getCharacterStaticStatus():isSiegeBastille() or actorProxy:getCharacterStaticStatus():isSiegeFrameTower() or actorProxy:getCharacterStaticStatus():isWoodenFence() then
      local isShowMp = true
      local vehicleActorWrapper = getVehicleActorByProxy(actorProxy)
      if nil ~= vehicleActorWrapper then
        if vehicleActorWrapper:isActionType_BuildingStart() then
          isShowMp = true
        else
          isShowMp = false
        end
      end
      if true == isShowMp then
        local mp = actorProxyWrapper:get():getMp()
        local maxMp = actorProxyWrapper:get():getMaxMp()
        _PA_LOG("\236\156\160\237\157\165\236\139\160", "settingMpBar " .. tostring(mp) .. "/" .. tostring(maxMp))
        local mpRate = mp * 100 / maxMp
        mpMain:SetProgressRate(mpRate)
        mpMain:SetCurrentProgressRate(mpRate)
        mpMain:SetColor(Defines.Color.C_FFA3EF00)
        mpBack:SetShow(true)
        mpMain:SetShow(true)
      else
        mpBack:SetShow(false)
        mpMain:SetShow(false)
      end
    else
      mpBack:SetShow(false)
      mpMain:SetShow(false)
    end
  else
    mpBack:SetShow(false)
    mpMain:SetShow(false)
  end
end
local function settingLocalWarCombatPoint(actorKeyRaw, targetPanel, actorProxyWrapper)
  if nil == actorProxyWrapper then
    return
  end
  local actorProxy = actorProxyWrapper:get()
  if nil == actorProxy then
    return
  end
  if false == actorProxy:isPlayer() then
    return
  end
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  if nil == playerActorProxy then
    return
  end
  local txt_WarPoint = UI.getChildControl(targetPanel, "CharacterWarPoint")
  local lifeIcon = {
    [0] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_0"),
    [1] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_1"),
    [2] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_2"),
    [3] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_3"),
    [4] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_4"),
    [5] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_5"),
    [6] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_6"),
    [7] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_7"),
    [8] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_8"),
    [9] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_9"),
    [10] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_10"),
    [11] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_11"),
    [12] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_12"),
    [13] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_13")
  }
  local competitionTeamNo = playerActorProxyWrapper:getCompetitionTeamNo()
  local warCombatPoint = playerActorProxyWrapper:getLocalWarCombatPoint()
  if warCombatPoint > 0 then
    local hasTitle = false
    if playerActorProxyWrapper:checkToTitleKey() then
      if playerActorProxy:isHideCharacterName() and false == playerActorProxy:isFlashBanged() then
        hasTitle = false
      else
        hasTitle = true
      end
    else
      hasTitle = false
    end
    local hasGuild = playerActorProxy:isGuildMember() and (false == playerActorProxy:isHideGuildName() or playerActorProxy:isFlashBanged())
    local warPointPos = 0
    if true == hasTitle and true == hasGuild then
      warPointPos = 80
    elseif hasTitle ~= hasGuild then
      warPointPos = 60
    else
      warPointPos = 40
    end
    local nameColor
    if warCombatPoint < 50 then
      nameColor = UI_color.C_FFA1A1A1
    elseif warCombatPoint < 100 then
      nameColor = UI_color.C_FFFFFFFF
    elseif warCombatPoint < 150 then
      nameColor = UI_color.C_FFFFE050
    elseif warCombatPoint < 200 then
      nameColor = UI_color.C_FF75FF50
    elseif warCombatPoint < 250 then
      nameColor = UI_color.C_FF00FFD8
    elseif warCombatPoint < 300 then
      nameColor = UI_color.C_FFFF00D8
    elseif warCombatPoint < 350 then
      nameColor = UI_color.C_FFFF7200
    else
      nameColor = UI_color.C_FFFF0000
    end
    local scaleBuffer = txt_WarPoint:GetScale()
    txt_WarPoint:SetScale(1, 1)
    txt_WarPoint:SetFontColor(nameColor)
    txt_WarPoint:SetText("+" .. warCombatPoint)
    txt_WarPoint:SetShow(true)
    txt_WarPoint:SetSpanSize(txt_WarPoint:GetSpanSize().x, warPointPos)
    txt_WarPoint:SetScale(scaleBuffer.x, scaleBuffer.y)
    txt_WarPoint:ComputePos()
    for idx = 0, 13 do
      lifeIcon[idx]:SetShow(false)
    end
  elseif competitionTeamNo >= 0 then
    local hasTitle = false
    if playerActorProxyWrapper:checkToTitleKey() then
      if playerActorProxy:isHideCharacterName() and false == playerActorProxy:isFlashBanged() then
        hasTitle = false
      else
        hasTitle = true
      end
    else
      hasTitle = false
    end
    local hasGuild = playerActorProxy:isGuildMember() and (false == playerActorProxy:isHideGuildName() or playerActorProxy:isFlashBanged())
    local warPointPos = 0
    if true == hasTitle and true == hasGuild then
      warPointPos = 80
    elseif hasTitle ~= hasGuild then
      warPointPos = 60
    else
      warPointPos = 40
    end
    local nameColor = FGlobal_TeamColorList(competitionTeamNo - 1)
    local scaleBuffer = txt_WarPoint:GetScale()
    txt_WarPoint:SetScale(1, 1)
    txt_WarPoint:SetFontColor(nameColor)
    txt_WarPoint:SetShow(true)
    txt_WarPoint:SetSpanSize(txt_WarPoint:GetSpanSize().x, warPointPos)
    txt_WarPoint:SetScale(scaleBuffer.x, scaleBuffer.y)
    txt_WarPoint:ComputePos()
    txt_WarPoint:SetText("")
    local needOverHeadNameTag = 0 == ToClient_CompetitionMatchType() or 2 == ToClient_CompetitionMatchType()
    if true == needOverHeadNameTag and 0 ~= competitionTeamNo then
      local teamA_Info, teamB_Info
      if 0 == ToClient_CompetitionMatchType() then
        teamA_Info = ToClient_GetTeamListAt(0)
        teamB_Info = ToClient_GetTeamListAt(1)
      elseif 2 == ToClient_CompetitionMatchType() then
        teamA_Info = ToClient_GetArshaTeamInfo(1)
        teamB_Info = ToClient_GetArshaTeamInfo(2)
      end
      local teamA_Name = ""
      local teamB_Name = ""
      if nil ~= teamA_Info and nil ~= teamB_Info then
        teamA_Name = teamA_Info:getTeamName()
        teamB_Name = teamB_Info:getTeamName()
      end
      if "" ~= teamA_Name and "" ~= teamB_Name then
        if 1 == competitionTeamNo then
          txt_WarPoint:SetText("[ " .. teamA_Name .. " ]")
        elseif 2 == competitionTeamNo then
          txt_WarPoint:SetText("[ " .. teamB_Name .. " ]")
        end
      elseif 1 == competitionTeamNo then
        txt_WarPoint:SetText("[ " .. PAGetString(Defines.StringSheet_GAME, "LUA_COMPETITION_TEAM_A") .. " ]")
      elseif 2 == competitionTeamNo then
        txt_WarPoint:SetText("[ " .. PAGetString(Defines.StringSheet_GAME, "LUA_COMPETITION_TEAM_B") .. " ]")
      end
    elseif 1 == ToClient_CompetitionMatchType() and 0 ~= competitionTeamNo then
      local leaderInfo = ToClient_GetTeamLeaderInfo(competitionTeamNo)
      if nil ~= leaderInfo then
        txt_WarPoint:SetText("[ " .. leaderInfo:getCharacterName() .. " ]")
      end
    end
    for idx = 0, 13 do
      lifeIcon[idx]:SetShow(false)
    end
  else
    txt_WarPoint:SetText(0)
    txt_WarPoint:SetShow(false)
    local insertedArray = Array.new()
    settingLifeRankIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  end
end
function FGlobal_SettingMpBarTemp()
  local selfPlayer = getSelfPlayer()
  if nil == selfPlayer then
    return
  end
  if nil == selfPlayer:get():getUIPanel() then
    return
  end
  settingMpBar(selfPlayer:get():getActorKeyRaw(), selfPlayer:get():getUIPanel(), selfPlayer)
end
local settingStun = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  local stunBack = UI.getChildControl(targetPanel, "ProgressBack_Stun")
  local stunProgress = UI.getChildControl(targetPanel, "CharacterStunGageProgress")
  stunBack:SetShow(false)
  stunProgress:SetShow(false)
  if nil == stunBack or nil == stunProgress then
    return
  end
  local characterActorProxyWrapper = getCharacterActor(actorKeyRaw)
  if nil == characterActorProxyWrapper then
    return
  end
  local characterActorProxy = characterActorProxyWrapper:get()
  if characterActorProxy:hasStun() then
    local stun = characterActorProxy:getStun()
    local maxStun = characterActorProxy:getMaxStun()
    if 0 ~= stun then
      stunProgress:SetProgressRate(stun / maxStun * 100)
      stunProgress:SetShow(true)
    else
      stunBack:SetShow(false)
      stunProgress:SetShow(false)
    end
  else
    stunBack:SetShow(false)
    stunProgress:SetShow(false)
  end
end
local settingGuildMarkAndPreemptiveStrike = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  if nil == targetPanel then
    return
  end
  if false == actorProxyWrapper:get():isPlayer() then
    return
  end
  if actorProxyWrapper:get():isPetProxy() or actorProxyWrapper:get():isHouseHold() then
    return
  end
  local preemptiveStrikeBeing = UI.getChildControl(targetPanel, "Static_PreemptiveStrikeBeing")
  local murdererMark = UI.getChildControl(targetPanel, "Static_MurdererMark")
  local guildBack = UI.getChildControl(targetPanel, "Static_GuildBackGround")
  local guildMark = UI.getChildControl(targetPanel, "Static_GuildMark")
  local guildMaster = UI.getChildControl(targetPanel, "Static_Icon_GuildMaster")
  local tierIcon = UI.getChildControl(targetPanel, "Static_BPIcon")
  local guildName = UI.getChildControl(targetPanel, "CharacterGuild")
  local nameTag = UI.getChildControl(targetPanel, "CharacterName")
  local title = UI.getChildControl(targetPanel, "CharacterTitle")
  local alias = UI.getChildControl(targetPanel, "CharacterAlias")
  if nil == guildName or nil == guildBack or nil == guildMark or nil == nameTag or nil == title or nil == preemptiveStrikeBeing or nil == murdererMark or nil == actorProxyWrapper or nil == alias then
    return
  end
  local scaleBuffer = guildMark:GetScale()
  preemptiveStrikeBeing:SetScale(1, 1)
  murdererMark:SetScale(1, 1)
  guildMark:SetScale(1, 1)
  guildBack:SetScale(1, 1)
  guildMaster:SetScale(1, 1)
  tierIcon:SetScale(1, 1)
  guildName:SetScale(1, 1)
  nameTag:SetScale(1, 1)
  title:SetScale(1, 1)
  alias:SetScale(1, 1)
  local widthMax = guildName:GetTextSizeX()
  widthMax = math.max(widthMax, nameTag:GetTextSizeX())
  widthMax = math.max(widthMax, title:GetTextSizeX())
  if alias:GetShow() then
    widthMax = math.max(widthMax, alias:GetTextSizeX())
  end
  local sizeMax = math.max(guildMark:GetSizeX(), guildBack:GetSizeX())
  sizeMax = math.max(sizeMax, tierIcon:GetSizeX())
  sizeMax = sizeMax * 0.5
  guildMark:SetSpanSize(-widthMax / 2 - sizeMax, guildMark:GetSpanSize().y)
  guildBack:SetSpanSize(-widthMax / 2 - sizeMax, guildBack:GetSpanSize().y)
  guildMaster:SetSpanSize(-widthMax / 2 - sizeMax, guildMaster:GetSpanSize().y)
  tierIcon:SetSpanSize(widthMax / 2 + sizeMax, tierIcon:GetSpanSize().y)
  preemptiveStrikeBeing:SetSpanSize(widthMax / 2 + preemptiveStrikeBeing:GetSizeX() / 2 + 5, preemptiveStrikeBeing:GetSpanSize().y)
  local actorProxyWrapper = getActor(actorKeyRaw)
  local name = actorProxyWrapper:getName()
  if preemptiveStrikeBeing:GetShow() then
    if "" ~= name then
      murdererMark:SetSpanSize(widthMax / 2 + murdererMark:GetSizeX() + preemptiveStrikeBeing:GetSizeX() / 2 - 10, murdererMark:GetSpanSize().y)
    else
      murdererMark:SetSpanSize(widthMax / 2 - murdererMark:GetSizeX() / 2, murdererMark:GetSpanSize().y)
    end
  elseif "" ~= name then
    murdererMark:SetSpanSize(widthMax / 2 + murdererMark:GetSizeX() / 2 + 5, murdererMark:GetSpanSize().y)
  else
    murdererMark:SetSpanSize(widthMax / 2 - murdererMark:GetSizeX(), murdererMark:GetSpanSize().y)
  end
  preemptiveStrikeBeing:SetScale(scaleBuffer.x, scaleBuffer.y)
  murdererMark:SetScale(scaleBuffer.x, scaleBuffer.y)
  guildMark:SetScale(scaleBuffer.x, scaleBuffer.y)
  tierIcon:SetScale(scaleBuffer.x, scaleBuffer.y)
  guildBack:SetScale(scaleBuffer.x, scaleBuffer.y)
  guildMaster:SetScale(scaleBuffer.x, scaleBuffer.y)
  guildName:SetScale(scaleBuffer.x, scaleBuffer.y)
  nameTag:SetScale(scaleBuffer.x, scaleBuffer.y)
  title:SetScale(scaleBuffer.x, scaleBuffer.y)
  alias:SetScale(scaleBuffer.x, scaleBuffer.y)
end
local pvpIconTexture = {
  [0] = {
    x1 = 4,
    y1 = 426,
    x2 = 36,
    y2 = 458
  },
  [1] = {
    x1 = 37,
    y1 = 426,
    x2 = 69,
    y2 = 458
  },
  [2] = {
    x1 = 70,
    y1 = 426,
    x2 = 102,
    y2 = 458
  },
  [3] = {
    x1 = 103,
    y1 = 426,
    x2 = 135,
    y2 = 458
  }
}
local preemptiveIconTexture = {
  [0] = {
    x1 = 4,
    y1 = 391,
    x2 = 36,
    y2 = 423
  },
  [1] = {
    x1 = 37,
    y1 = 391,
    x2 = 69,
    y2 = 423
  },
  [2] = {
    x1 = 70,
    y1 = 391,
    x2 = 102,
    y2 = 423
  },
  [3] = {
    x1 = 103,
    y1 = 391,
    x2 = 135,
    y2 = 423
  }
}
local function settingPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
  local preemptiveStrikeBeing = UI.getChildControl(targetPanel, "Static_PreemptiveStrikeBeing")
  if nil == preemptiveStrikeBeing then
    return
  end
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  local isPvpModeOn = playerActorProxy:isPvPMode()
  local isShowPvpIcon = playerActorProxy:isPreemptiveStrikeBeing() and false == playerActorProxy:isHideTimeOver(hideTimeType.preemptiveStrike) or isPvpModeOn
  preemptiveStrikeBeing:SetShow(isShowPvpIcon)
  local tendencyColor = PvpIconColorByTendency(actorKeyRaw)
  if playerActorProxy:isPreemptiveStrikeBeing() and false == playerActorProxy:isHideTimeOver(hideTimeType.preemptiveStrike) then
    preemptiveStrikeBeing:ChangeTextureInfoNameAsync("New_UI_Common_ForLua/Default/Default_Buttons_02.dds")
    local x1, y1, x2, y2 = setTextureUV_Func(preemptiveStrikeBeing, preemptiveIconTexture[tendencyColor].x1, preemptiveIconTexture[tendencyColor].y1, preemptiveIconTexture[tendencyColor].x2, preemptiveIconTexture[tendencyColor].y2)
    preemptiveStrikeBeing:getBaseTexture():setUV(x1, y1, x2, y2)
    preemptiveStrikeBeing:setRenderTexture(preemptiveStrikeBeing:getBaseTexture())
  else
    preemptiveStrikeBeing:ChangeTextureInfoNameAsync("New_UI_Common_ForLua/Default/Default_Buttons_02.dds")
    local x1, y1, x2, y2 = setTextureUV_Func(preemptiveStrikeBeing, pvpIconTexture[tendencyColor].x1, pvpIconTexture[tendencyColor].y1, pvpIconTexture[tendencyColor].x2, pvpIconTexture[tendencyColor].y2)
    preemptiveStrikeBeing:getBaseTexture():setUV(x1, y1, x2, y2)
    preemptiveStrikeBeing:setRenderTexture(preemptiveStrikeBeing:getBaseTexture())
  end
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
end
function PvpIconColorByTendency(actorKeyRaw)
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  local tendency = playerActorProxy:getTendency()
  if tendency >= 150000 then
    tendencyColor = 0
  elseif tendency >= 0 and tendency < 150000 then
    tendencyColor = 1
  elseif tendency >= -5000 and tendency < 0 then
    tendencyColor = 2
  else
    tendencyColor = 3
  end
  return tendencyColor
end
local function settingMurderer(actorKeyRaw, targetPanel, actorProxyWrapper)
  local murdererMark = UI.getChildControl(targetPanel, "Static_MurdererMark")
  if nil == murdererMark then
    return
  end
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxyWrapper then
    return
  end
  local playerActorProxy = playerActorProxyWrapper:get()
  murdererMark:SetShow(playerActorProxy:isMurdererStateBeing() and false == playerActorProxy:isHideTimeOver(hideTimeType.murdererEnd))
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
end
local function settingGuildTextForAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
  if nil == targetPanel then
    return
  end
  local playerActorProxyWrapper = getPlayerActor(actorKeyRaw)
  local guildName = UI.getChildControl(targetPanel, "CharacterGuild")
  local alias = UI.getChildControl(targetPanel, "CharacterAlias")
  local lifeRankIcon = {}
  local actorProxy = actorProxyWrapper:get()
  if actorProxy:isPlayer() then
    for i = 0, lifeContentCount - 1 do
      lifeRankIcon[i] = UI.getChildControl(targetPanel, "Static_LifeRankIcon_" .. i)
      if nil == lifeRankIcon[i] then
        return
      end
    end
  end
  if nil == guildName or nil == alias or nil == playerActorProxyWrapper then
    return
  end
  for i = 0, lifeContentCount - 1 do
    if nil == lifeRankIcon[i] then
      return
    end
  end
  local scaleBuffer = alias:GetScale()
  guildName:SetScale(1, 1)
  alias:SetScale(1, 1)
  for i = 0, lifeContentCount - 1 do
    lifeRankIcon[i]:SetScale(1, 1)
  end
  local spanY = alias:GetSpanSize().y
  if playerActorProxyWrapper:checkToTitleKey() then
    spanY = spanY + alias:GetSizeY()
  end
  guildName:SetSpanSize(guildName:GetSpanSize().x, spanY)
  if playerActorProxyWrapper:get():isGuildMember() and (false == playerActorProxyWrapper:get():isHideGuildName() or playerActorProxyWrapper:get():isFlashBanged()) then
    spanY = spanY + guildName:GetSizeY()
  end
  for i = 0, lifeContentCount - 1 do
    lifeRankIcon[i]:SetSpanSize(lifeRankIcon[i]:GetSpanSize().x, spanY)
  end
  guildName:SetScale(scaleBuffer.x, scaleBuffer.y)
  alias:SetScale(scaleBuffer.x, scaleBuffer.y)
  for i = 0, lifeContentCount - 1 do
    lifeRankIcon[i]:SetScale(scaleBuffer.x, scaleBuffer.y)
  end
end
local settingQuestMark = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  local questMark = UI.getChildControl(targetPanel, "Static_Quest_Mark")
  if nil == questMark then
    return
  end
  if isQuestMonsterByKey(actorKeyRaw) then
    questMark:SetShow(true)
  else
    questMark:SetShow(false)
  end
end
local settingQuestMarkForce = function(isShow, targetPanel, actorProxyWrapper)
  local questMark = UI.getChildControl(targetPanel, "Static_Quest_Mark")
  if nil == questMark then
    return
  end
  questMark:SetShow(isShow)
end
function questIconOverTooltip(show, actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
  local panel = actorProxyWrapper:get():getUIPanel()
  local questStaticStatusWrapper = npcActorProxyWrapper:getQuestStatisStatusWrapper()
  if nil == questStaticStatusWrapper then
    return
  end
  local questTitle = questStaticStatusWrapper:getTitle()
  local questTitleTooltip = UI.getChildControl(panel, "StaticText_QuestTooltip")
  local questIcon = UI.getChildControl(panel, "Static_QuestIcon")
  if true == show then
    local prevScale = questIcon:GetScale()
    questTitleTooltip:SetScale(1, 1)
    questTitleTooltip:SetShow(true)
    questTitleTooltip:SetText(questTitle)
    questTitleTooltip:SetSize(questTitleTooltip:GetTextSizeX() + 20, questTitleTooltip:GetSizeY())
    questTitleTooltip:SetSpanSize(questIcon:GetSpanSize().x, questTitleTooltip:GetSpanSize().y - 20)
    questTitleTooltip:SetAlpha(1)
    questTitleTooltip:SetFontAlpha(1)
  else
    questTitleTooltip:SetShow(false)
  end
end
local currentTypeChangeCheck = {}
local function settingQuestUI(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
  local questIcon = UI.getChildControl(targetPanel, "Static_QuestIcon")
  local questBorder = UI.getChildControl(targetPanel, "Static_QuestIconBorder")
  local questClear = UI.getChildControl(targetPanel, "Static_QuestClear")
  local lookAtMe = UI.getChildControl(targetPanel, "Static_LookAtMe")
  local lookAtMe2 = UI.getChildControl(targetPanel, "Static_LookAtMe2")
  local questType = UI.getChildControl(targetPanel, "Static_QuestType")
  local npcActorProxyWrapper = getNpcActor(actorKeyRaw)
  if nil == questIcon or nil == questBorder or nil == questClear or nil == lookAtMe or nil == lookAtMe2 or nil == npcActorProxyWrapper then
    return
  end
  local questStaticStatusWrapper = npcActorProxyWrapper:getQuestStatisStatusWrapper()
  if nil == questStaticStatusWrapper then
    questIcon:SetShow(false)
    questBorder:SetShow(false)
    questClear:SetShow(false)
    lookAtMe:SetShow(false)
    lookAtMe2:SetShow(false)
    questType:SetShow(false)
    return
  end
  local currentType = npcActorProxyWrapper:get():getOverHeadQuestInfoType()
  local isShow = 0 ~= currentType
  local currentquestType = questStaticStatusWrapper:getQuestType()
  questIcon:addInputEvent("Mouse_On", "questIconOverTooltip( true,\t" .. actorKeyRaw .. " )")
  questIcon:addInputEvent("Mouse_Out", "questIconOverTooltip( false,\t" .. actorKeyRaw .. " )")
  questIcon:ChangeTextureInfoNameAsync(questStaticStatusWrapper:getIconPath())
  questIcon:SetAlpha(1)
  questBorder:SetAlpha(1)
  questClear:SetAlpha(1)
  lookAtMe:SetAlpha(1)
  lookAtMe2:SetAlpha(1)
  questType:SetAlpha(1)
  questIcon:SetAlphaIgnore(true)
  questBorder:SetAlphaIgnore(true)
  questClear:SetAlphaIgnore(true)
  lookAtMe:SetAlphaIgnore(true)
  lookAtMe2:SetAlphaIgnore(true)
  questType:SetAlphaIgnore(true)
  questIcon:SetScaleMinimum(0.5)
  questBorder:SetScaleMinimum(0.5)
  questClear:SetScaleMinimum(0.5)
  lookAtMe:SetScaleMinimum(0.5)
  lookAtMe2:SetScaleMinimum(0.5)
  questType:SetScaleMinimum(0.5)
  questIcon:SetShow(isShow)
  questBorder:SetShow(isShow)
  questClear:SetShow(3 == currentType)
  lookAtMe:SetShow(isShow)
  lookAtMe2:SetShow(isShow)
  questType:SetShow(isShow)
  if isShow then
    local prevAlpha = questBorder:GetAlpha()
    questType:SetShow(false)
    if 3 == currentType then
      questBorder:SetColor(Defines.Color.C_FFFF0000)
      lookAtMe:SetShow(true)
      lookAtMe:SetColor(Defines.Color.C_FFF26A6A)
      lookAtMe2:SetShow(true)
      lookAtMe2:SetColor(Defines.Color.C_FFF26A6A)
      if Panel_Interaction:GetShow() and true ~= currentTypeChangeCheck[actorKeyRaw] then
        Interaction_Close()
      end
      currentTypeChangeCheck[actorKeyRaw] = true
    elseif 2 == currentType then
      questBorder:SetColor(Defines.Color.C_FF008AFF)
      lookAtMe:SetShow(true)
      lookAtMe:SetColor(Defines.Color.C_FF6DC6FF)
      lookAtMe2:SetShow(true)
      lookAtMe2:SetColor(Defines.Color.C_FF6DC6FF)
      currentTypeChangeCheck[actorKeyRaw] = false
    elseif 1 == currentType then
      questBorder:SetColor(Defines.Color.C_FFFFCE22)
      lookAtMe:SetShow(true)
      lookAtMe:SetColor(Defines.Color.C_FFFFEEA0)
      lookAtMe2:SetShow(true)
      lookAtMe2:SetColor(Defines.Color.C_FFFFEEA0)
      currentTypeChangeCheck[actorKeyRaw] = false
    end
    questBorder:SetAlpha(prevAlpha)
    local aControl = {
      questIcon = questIcon,
      questBorder = questBorder,
      questClear = questClear,
      lookAtMe = lookAtMe,
      lookAtMe2 = lookAtMe2,
      questType = questType,
      GetSizeX = function()
        return questBorder:GetSizeX()
      end,
      SetScale = function(self, x, y)
        questBorder:SetScale(x, y)
        questIcon:SetScale(x, y)
        questClear:SetScale(x, y)
        lookAtMe:SetScale(x, y)
        lookAtMe2:SetScale(x, y)
        questType:SetScale(x, y)
      end,
      SetSpanSize = function(self, x, y)
        questBorder:SetSpanSize(x, y)
        questIcon:SetSpanSize(x, y + 8)
        questClear:SetSpanSize(x, y + 10)
        lookAtMe:SetSpanSize(x, y + 4)
        lookAtMe2:SetSpanSize(x, y)
        questType:SetSpanSize(x, y + 40)
      end,
      GetSpanSize = function()
        return questBorder:GetSpanSize()
      end,
      GetScale = function()
        return questBorder:GetScale()
      end,
      GetShow = function()
        return questBorder:GetShow()
      end
    }
    if 5 == currentquestType then
      questBorder:SetColor(Defines.Color.C_FF88DF00)
      lookAtMe:SetShow(true)
      lookAtMe:SetColor(Defines.Color.C_FF88DF00)
      lookAtMe2:SetShow(true)
      lookAtMe2:SetColor(Defines.Color.C_FF88DF00)
      questType:SetShow(true)
      if 2 == currentType then
        questBorder:SetColor(Defines.Color.C_FF008AFF)
        lookAtMe:SetShow(true)
        lookAtMe:SetColor(Defines.Color.C_FF88DF00)
        lookAtMe2:SetShow(true)
        lookAtMe2:SetColor(Defines.Color.C_FF88DF00)
      end
    else
    end
    insertedArray:push_back(aControl)
  end
end
local settingBillBoardMode = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  houseHoldActorWrapper = getHouseHoldActor(actorKeyRaw)
  if nil ~= houseHoldActorWrapper and false == houseHoldActorWrapper:get():isTent() and false == houseHoldActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():isBarricade() then
    targetPanel:Set3DRenderType(2)
    targetPanel:Set3DOffsetZ(40)
  end
end
local function settingBubbleBox(actorKeyRaw, targetPanel, actorProxyWrapper, message)
  local targetStatic = UI.getChildControl(targetPanel, "StaticText_BubbleBox")
  local targetStaticBG = UI.getChildControl(targetPanel, "Static_BubbleBox")
  bubbleBox.lastShowDeltaTime = 0
  targetStatic:SetScale(1, 1)
  targetStaticBG:SetScale(1, 1)
  targetStatic:SetSize(210, 10)
  targetStatic:SetText(message)
  local sizeY = targetStatic:GetSizeY() + 40
  local sizeY = targetStatic:GetSizeY() + 40
  if 210 < targetStatic:GetTextSizeX() then
    targetStatic:SetSize(targetStatic:GetSizeX(), sizeY)
    targetStaticBG:SetSize(targetStatic:GetSizeX() + 18, sizeY)
    targetStatic:SetSpanSize(targetStaticBG:GetSpanSize().x - 10, targetStaticBG:GetSpanSize().y)
  else
    targetStatic:SetSize(targetStatic:GetTextSizeX(), sizeY)
    targetStaticBG:SetSize(targetStatic:GetTextSizeX() + 27, sizeY)
    targetStatic:SetSpanSize(targetStaticBG:GetSpanSize().x - 10, targetStaticBG:GetSpanSize().y)
  end
  local time
  if #message < 5 then
    time = 2.22
  elseif #message < 10 then
    time = 2.72
  elseif #message < 15 then
    time = 3.22
  elseif #message < 20 then
    time = 3.72
  elseif #message < 25 then
    time = 4.22
  elseif #message < 30 then
    time = 4.72
  else
    time = 5.22
  end
  ActorInsertShowTime(actorKeyRaw, hideTimeType.bubbleBox, time * 1000)
end
local settingBubbleBoxShow = function(actorKeyRaw, targetPanel, actorProxyWrapper, isShow)
  local targetStatic = UI.getChildControl(targetPanel, "StaticText_BubbleBox")
  local targetStaticBG = UI.getChildControl(targetPanel, "Static_BubbleBox")
  targetStatic:SetShow(isShow)
  targetStaticBG:SetShow(isShow)
end
local settingWaitCommentLaunch = function(isShow)
  local selfPlayerWrapper = getSelfPlayer()
  local selfPlayer = selfPlayerWrapper:get()
  local panel = selfPlayer:getWaitCommentPanel()
  if nil == panel then
    return
  end
  local targetBoard = UI.getChildControl(panel, "Static_Board")
  local targetPaper = UI.getChildControl(panel, "Static_Paper")
  local targetEditComment = UI.getChildControl(panel, "Edit_Txt")
  local targetPin_1 = UI.getChildControl(panel, "Static_Pin_1")
  local targetPin_2 = UI.getChildControl(panel, "Static_Pin_2")
  local targetPin_3 = UI.getChildControl(panel, "Static_Pin_3")
  local targetPin_4 = UI.getChildControl(panel, "Static_Pin_4")
  local targetRoll_L = UI.getChildControl(panel, "Static_Roll_L")
  local targetRoll_R = UI.getChildControl(panel, "Static_Roll_R")
  local targetPlayerID = UI.getChildControl(panel, "StaticText_ID")
  if isShow then
    local scaleBuffer = targetBoard:GetScale()
    targetBoard:SetScale(1, 1)
    targetEditComment:SetScale(1, 1)
    targetPaper:SetScale(1, 1)
    targetBoard:SetSize(100, 110)
    targetEditComment:SetSize(45, 56)
    targetPaper:SetSize(75, 56)
    targetBoard:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetEditComment:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetPaper:SetScale(scaleBuffer.x, scaleBuffer.y)
    local paperSizeX = targetPaper:GetSizeX()
    local paperPosX = targetPaper:GetPosX()
    targetEditComment:SetEditText("", false)
    targetEditComment:SetMaxInput(20)
    targetRoll_L:SetShow(true)
    targetRoll_R:SetShow(true)
    targetPaper:SetShow(true)
    targetEditComment:SetShow(true)
    targetPaper:SetIgnore(false)
    targetRoll_L:SetSpanSize(-paperSizeX / 2, targetRoll_L:GetSpanSize().y)
    targetRoll_R:SetSpanSize(paperSizeX / 2, targetRoll_R:GetSpanSize().y)
    targetPaper:addInputEvent("Mouse_LUp", "settingWaitCommentReady()")
  else
    targetRoll_L:SetShow(false)
    targetRoll_R:SetShow(false)
    targetPaper:SetShow(false)
    targetEditComment:SetShow(false)
  end
  targetBoard:SetShow(false)
  targetPlayerID:SetShow(false)
  targetPin_1:SetShow(false)
  targetPin_2:SetShow(false)
  targetPin_3:SetShow(false)
  targetPin_4:SetShow(false)
  targetEditComment:SetIgnore(true)
end
function settingWaitCommentReady()
  local selfPlayerWrapper = getSelfPlayer()
  local selfPlayer = selfPlayerWrapper:get()
  local panel = selfPlayer:getWaitCommentPanel()
  if nil == panel then
    return
  end
  local targetBoard = UI.getChildControl(panel, "Static_Board")
  local targetPaper = UI.getChildControl(panel, "Static_Paper")
  local targetEditComment = UI.getChildControl(panel, "Edit_Txt")
  local targetPin_1 = UI.getChildControl(panel, "Static_Pin_1")
  local targetPin_2 = UI.getChildControl(panel, "Static_Pin_2")
  local targetPin_3 = UI.getChildControl(panel, "Static_Pin_3")
  local targetPin_4 = UI.getChildControl(panel, "Static_Pin_4")
  local targetRoll_L = UI.getChildControl(panel, "Static_Roll_L")
  local targetRoll_R = UI.getChildControl(panel, "Static_Roll_R")
  local targetPlayerID = UI.getChildControl(panel, "StaticText_ID")
  local scaleBuffer = targetEditComment:GetScale()
  targetEditComment:SetScale(1, 1)
  targetPaper:SetScale(1, 1)
  targetEditComment:SetSize(256, 56)
  targetPaper:SetSize(281, 56)
  targetEditComment:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetPaper:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetEditComment:ComputePos()
  targetPaper:ComputePos()
  local paperSizeX = targetPaper:GetSizeX()
  local paperPosX = targetPaper:GetPosX()
  targetRoll_L:SetSpanSize(-paperSizeX / 2, targetRoll_L:GetSpanSize().y)
  targetRoll_R:SetSpanSize(paperSizeX / 2, targetRoll_R:GetSpanSize().y)
  SetFocusEdit(targetEditComment)
  targetBoard:SetShow(false)
  targetPaper:SetShow(true)
  targetEditComment:SetShow(true)
  targetRoll_L:SetShow(true)
  targetRoll_R:SetShow(true)
  targetPlayerID:SetShow(false)
  targetPin_1:SetShow(false)
  targetPin_2:SetShow(false)
  targetPin_3:SetShow(false)
  targetPin_4:SetShow(false)
end
function settingWaitCommentConfirmReload()
  local selfPlayerWrapper = getSelfPlayer()
  local selfPlayer = selfPlayerWrapper:get()
  if false == selfPlayer:isShowWaitComment() then
    return
  end
  local panel = selfPlayer:getWaitCommentPanel()
  if nil == panel then
    return
  end
  local targetEditComment = UI.getChildControl(panel, "Edit_Txt")
  targetEditComment:SetEditText(selfPlayer:getWaitComment(), true)
  settingWaitCommentConfirm()
end
function settingWaitCommentConfirm()
  ClearFocusEdit()
  local selfPlayerWrapper = getSelfPlayer()
  local selfPlayer = selfPlayerWrapper:get()
  local panel = selfPlayer:getWaitCommentPanel()
  if nil == panel then
    return
  end
  local targetBoard = UI.getChildControl(panel, "Static_Board")
  local targetPaper = UI.getChildControl(panel, "Static_Paper")
  local targetEditComment = UI.getChildControl(panel, "Edit_Txt")
  local targetPin_1 = UI.getChildControl(panel, "Static_Pin_1")
  local targetPin_2 = UI.getChildControl(panel, "Static_Pin_2")
  local targetPin_3 = UI.getChildControl(panel, "Static_Pin_3")
  local targetPin_4 = UI.getChildControl(panel, "Static_Pin_4")
  local targetRoll_L = UI.getChildControl(panel, "Static_Roll_L")
  local targetRoll_R = UI.getChildControl(panel, "Static_Roll_R")
  local targetPlayerID = UI.getChildControl(panel, "StaticText_ID")
  targetPlayerID:SetText("[" .. selfPlayerWrapper:getName() .. "]")
  targetBoard:SetShow(true)
  targetPlayerID:SetShow(true)
  targetPin_1:SetShow(true)
  targetPin_2:SetShow(true)
  targetPin_3:SetShow(true)
  targetPin_4:SetShow(true)
  targetEditComment:SetShow(true)
  targetPin_1:AddEffect("fUI_Repair01", false, 0, 0)
  targetPin_2:AddEffect("fUI_Repair01", false, 0, 0)
  targetPin_3:AddEffect("fUI_Repair01", false, 0, 0)
  targetPin_4:AddEffect("fUI_Repair01", false, 0, 0)
  targetRoll_L:SetShow(false)
  targetRoll_R:SetShow(false)
  targetEditComment:SetIgnore(true)
  targetPaper:SetIgnore(false)
  updateWaitComment(targetEditComment:GetEditText())
  targetEditComment:SetEditText(chatting_filteredText(targetEditComment:GetEditText()), true)
  local sizeY = targetEditComment:GetSizeY()
  local scaleBuffer = targetEditComment:GetScale()
  targetEditComment:SetScale(1, 1)
  targetPaper:SetScale(1, 1)
  targetBoard:SetScale(1, 1)
  targetPlayerID:SetScale(1, 1)
  if 256 < targetEditComment:GetTextSizeX() then
    targetBoard:SetSize(targetEditComment:GetSizeX() + 50, sizeY + 65)
    targetPaper:SetSize(targetEditComment:GetSizeX() + 25, sizeY + 10)
  else
    targetEditComment:SetSize(targetEditComment:GetTextSizeX(), targetEditComment:GetSizeY())
    targetPaper:SetSize(targetEditComment:GetTextSizeX() + 25, targetPaper:GetSizeY())
    targetBoard:SetSize(targetEditComment:GetTextSizeX() + 60, targetBoard:GetSizeY())
  end
  targetPlayerID:SetSize(targetPaper:GetSizeX(), targetPlayerID:GetSizeY())
  targetBoard:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetPaper:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetEditComment:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetPlayerID:SetScale(scaleBuffer.x, scaleBuffer.y)
  targetBoard:ComputePos()
  targetPaper:ComputePos()
  targetEditComment:ComputePos()
  targetPlayerID:ComputePos()
  targetPin_1:SetSpanSize(targetPaper:GetPosX() + 5, targetPin_1:GetSpanSize().y)
  targetPin_2:SetSpanSize(targetPaper:GetPosX() + targetPaper:GetSizeX() - 15, targetPin_2:GetSpanSize().y)
  targetPin_3:SetSpanSize(targetPaper:GetPosX() + 5, targetPin_3:GetSpanSize().y)
  targetPin_4:SetSpanSize(targetPaper:GetPosX() + targetPaper:GetSizeX() - 15, targetPin_4:GetSpanSize().y)
end
function WaitComment_CheckCurrentUiEdit(targetUI)
  local selfPlayerWrapper = getSelfPlayer()
  if nil == selfPlayerWrapper then
    return false
  end
  local selfPlayer = selfPlayerWrapper:get()
  local panel = selfPlayer:getWaitCommentPanel()
  if nil == panel then
    return false
  end
  local targetEditComment = UI.getChildControl(panel, "Edit_Txt")
  return nil ~= targetUI and targetUI:GetKey() == targetEditComment:GetKey()
end
local settingWaitComment = function(actorKeyRaw, panel, actorProxyWrapper, isShow, isforce)
  local selfPlayer = getSelfPlayer()
  local selfActorKeyRaw = selfPlayer:getActorKey()
  if actorKeyRaw == selfActorKeyRaw and true ~= isforce then
    return
  end
  local targetPanel = panel
  if actorProxyWrapper:get():isSelfPlayer() then
    targetPanel = getSelfPlayer():get():getWaitCommentPanel()
  end
  local playerActorProxy = getPlayerActor(actorKeyRaw)
  if nil == playerActorProxy then
    return
  end
  local message = playerActorProxy:get():getWaitComment()
  local targetBoard = UI.getChildControl(targetPanel, "Static_Board")
  local targetPaper = UI.getChildControl(targetPanel, "Static_Paper")
  local targetEditComment = UI.getChildControl(targetPanel, "Edit_Txt")
  local targetPin_1 = UI.getChildControl(targetPanel, "Static_Pin_1")
  local targetPin_2 = UI.getChildControl(targetPanel, "Static_Pin_2")
  local targetPin_3 = UI.getChildControl(targetPanel, "Static_Pin_3")
  local targetPin_4 = UI.getChildControl(targetPanel, "Static_Pin_4")
  local targetPlayerID = UI.getChildControl(targetPanel, "StaticText_ID")
  if isShow and nil ~= message and "" ~= message then
    targetBoard:SetShow(true)
    targetPaper:SetShow(true)
    targetEditComment:SetShow(true)
    targetPin_1:SetShow(true)
    targetPin_2:SetShow(true)
    targetPin_3:SetShow(true)
    targetPin_4:SetShow(true)
    targetPlayerID:SetShow(true)
    local scaleBuffer = targetEditComment:GetScale()
    targetEditComment:SetScale(1, 1)
    targetBoard:SetScale(1, 1)
    targetPaper:SetScale(1, 1)
    targetPlayerID:SetScale(1, 1)
    targetEditComment:SetSize(256, 56)
    targetPlayerID:SetText("[" .. playerActorProxy:getName() .. "]")
    targetEditComment:SetText(message)
    local sizeY = targetEditComment:GetSizeY()
    targetEditComment:SetSize(targetEditComment:GetTextSizeX(), targetEditComment:GetSizeY())
    targetBoard:SetSize(targetEditComment:GetTextSizeX() + 60, targetBoard:GetSizeY())
    targetPaper:SetSize(targetEditComment:GetTextSizeX() + 25, targetPaper:GetSizeY())
    targetPlayerID:SetSize(targetPaper:GetSizeX(), targetPlayerID:GetSizeY())
    targetEditComment:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetBoard:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetPaper:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetPlayerID:SetScale(scaleBuffer.x, scaleBuffer.y)
    targetBoard:ComputePos()
    targetPaper:ComputePos()
    targetEditComment:ComputePos()
    targetPlayerID:ComputePos()
    targetPin_1:SetSpanSize(-targetEditComment:GetTextSizeX() / 2, 40)
    targetPin_2:SetSpanSize(targetEditComment:GetTextSizeX() / 2, 40)
    targetPin_3:SetSpanSize(targetEditComment:GetTextSizeX() / 2, 5)
    targetPin_4:SetSpanSize(-targetEditComment:GetTextSizeX() / 2, 5)
  else
    targetBoard:SetShow(false)
    targetPaper:SetShow(false)
    targetEditComment:SetShow(false)
    targetPin_1:SetShow(false)
    targetPin_2:SetShow(false)
    targetPin_3:SetShow(false)
    targetPin_4:SetShow(false)
    targetPlayerID:SetShow(false)
  end
end
local settingSelfPlayerNameHelpText = function(actorKeyRaw, panel, actorProxyWrapper)
end
local furnitureActorKeyRaw
function Furniture_Check(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  local actorProxy = actorProxyWrapper:get()
  local characterStaticStatus = actorProxy:getCharacterStaticStatus()
  furnitureActorKeyRaw = actorKeyRaw
  if nil == actorProxy or nil == characterStaticStatus or nil == actorKeyRaw then
    return
  end
  if actorProxy:isInstallationActor() then
    local installationActorWrapper = getInstallationActor(furnitureActorKeyRaw)
    if Panel_Housing:IsShow() then
      return
    end
    local installationType = installationActorWrapper:getStaticStatusWrapper():getObjectStaticStatus():getInstallationType()
    if false == isShowInstallationEnduranceType(installationType) then
      return
    end
    if toInt64(0, 0) == installationActorWrapper:getOwnerHouseholdNo_s64() or installationActorWrapper:isHavestInstallation() then
    else
      furnitureCheck = true
    end
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end
function Funiture_Endurance_Hide()
  if true == furnitureCheck and nil ~= furnitureActorKeyRaw then
    local actorProxyWrapper = getActor(furnitureActorKeyRaw)
    if nil ~= actorProxyWrapper then
      local actorProxy = actorProxyWrapper:get()
      if actorProxy ~= nil then
        local panel = actorProxy:getUIPanel()
        if nil == panel then
          return
        end
        furnitureCheck = false
        settingHpBar(furnitureActorKeyRaw, panel, actorProxyWrapper)
      else
        _PA_LOG("LUA", "called function Funiture_Endurance_Hide() / actorProxyWrapper:get()\236\151\144\236\132\156 nullpointer\234\176\128 \236\152\168\235\139\164!!!!")
        return
      end
    else
      _PA_LOG("LUA", "called function Funiture_Endurance_Hide() / getActor( furnitureActorKeyRaw )\236\151\144\236\132\156 nullpointer\234\176\128 \236\152\168\235\139\164!!!!")
      return
    end
  end
  furnitureActorKeyRaw = nil
end
local TypeByLoadData = {
  [ActorProxyType.isActorProxy] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isCharacter] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isPlayer] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    local insertedArray = Array.new()
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPlayerName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingTitle(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildInfo(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLifeRankIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStun(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildTextForAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLocalWarCombatPoint(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMurderer(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStatTierIcon(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isSelfPlayer] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    local insertedArray = Array.new()
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPlayerName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingTitle(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildInfo(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLifeRankIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStun(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingSelfPlayerNameHelpText(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingWaitCommentConfirmReload()
    settingGuildTextForAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLocalWarCombatPoint(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMurderer(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStatTierIcon(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isOtherPlayer] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    local insertedArray = Array.new()
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPlayerName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingTitle(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildInfo(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLifeRankIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStun(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingWaitComment(actorKeyRaw, targetPanel, actorProxyWrapper, true)
    settingGuildTextForAlias(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingLocalWarCombatPoint(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMurderer(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStatTierIcon(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isAlterego] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isMonster] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMonsterName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingTitle(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingQuestMark(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingStun(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isNpc] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingTitle(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingQuestMark(actorKeyRaw, targetPanel, actorProxyWrapper)
    local insertedArray = Array.new()
    settingQuestUI(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingFirstTalk(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingImportantTalk(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    settingOtherHeadIcon(actorKeyRaw, targetPanel, actorProxyWrapper, insertedArray)
    sortCenterX(insertedArray)
  end,
  [ActorProxyType.isDeadBody] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isVehicle] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingQuestMark(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isGate] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isHouseHold] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingBillBoardMode(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isInstallationActor] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isCollect] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
  end,
  [ActorProxyType.isInstanceObject] = function(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingName(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBarInitState(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingHpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
    settingMpBar(actorKeyRaw, targetPanel, actorProxyWrapper)
  end
}
function EventActorCreated_NameTag(actorKeyRaw, targetPanel, actorProxyType, actorProxyWrapper)
  if nil ~= TypeByLoadData[actorProxyType] then
    TypeByLoadData[actorProxyType](actorKeyRaw, targetPanel, actorProxyWrapper)
  end
end
function FromClient_ChangeTopRankUser(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingGuildTextForAlias(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_NameTag_TendencyChanged(actorKeyRaw, tendencyValue)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingPlayerName(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  settingPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
end
function EventActorFirsttalk(actorKeyRaw, isFirsttalkOn)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingQuestUI(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingFirstTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingImportantTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingOtherHeadIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  sortCenterX(insertedArray)
end
function EventActorImportantTalk(actorKeyRaw, isImportantTalk)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingQuestUI(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingFirstTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingImportantTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingOtherHeadIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  sortCenterX(insertedArray)
end
function EventActorChangeGuildInfo(actorKeyRaw, guildName)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingGuildTextForAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingLocalWarCombatPoint(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_EventActorUpdateTitleKey(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingGuildTextForAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingLocalWarCombatPoint(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_EventActorChangeGuildInfo_HaveLand(actorProxyWrapper, Panel, isoccupyTerritory)
  local targetPanel = Panel
  if nil == actorProxyWrapper or nil == isoccupyTerritory then
    return
  end
  local actorKeyRaw = actorProxyWrapper:get():getActorKeyRaw()
  settingGuildInfo(actorKeyRaw, targetPanel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, targetPanel, actorProxyWrapper)
end
function EventActorPvpModeChange(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  if actorProxyWrapper:get():isPlayer() then
    settingPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  end
end
function EventActorChangeLevel(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  if actorProxyWrapper:get():isMonster() then
    settingMonsterName(actorKeyRaw, panel, actorProxyWrapper)
  elseif actorProxyWrapper:get():isPlayer() then
    settingPlayerName(actorKeyRaw, panel, actorProxyWrapper)
  end
end
function EventActorHpChanged(actorKeyRaw, hp, maxHp)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end
function EventChangeCharacterName(actorKeyRaw, characterName)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingName(actorKeyRaw, panel, actorProxyWrapper)
  settingAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  if actorProxyWrapper:get():isPlayer() then
    settingPlayerName(actorKeyRaw, panel, actorProxyWrapper)
    settingLocalWarCombatPoint(actorKeyRaw, panel, actorProxyWrapper)
    settingStatTierIcon(actorKeyRaw, panel, actorProxyWrapper)
  end
end
function FGlobal_ReSet_SiegeBuildingName(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingName(actorKeyRaw, panel, actorProxyWrapper)
end
function insertPartyMemberGage(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
  if getSelfPlayer():getActorKey() ~= actorKeyRaw then
    local textName = actorProxyWrapper:getName()
    if 0 == ToClient_GetPartyType() then
      Proc_ShowMessage_Ack(PAGetStringParam1(Defines.StringSheet_GAME, "LUA_CHARACTERNAMETAG_PARTY_ACK", "textName", textName))
    else
      Proc_ShowMessage_Ack(PAGetStringParam1(Defines.StringSheet_GAME, "LUA_CHARACTERNAMETAG_LARGEPARTY_ACK", "textName", textName))
    end
  end
end
function removePartyMemberGage(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end
function EventActorAddDamage(actorKeyRaw, variedPoint, attackResult_IntValue, additionalDamageType, position)
  if 0 == attackResult_IntValue or 1 == attackResult_IntValue or 2 == attackResult_IntValue or 3 == attackResult_IntValue or 4 == attackResult_IntValue or 5 == attackResult_IntValue then
    ActorInsertShowTime(actorKeyRaw, hideTimeType.overHeadUI, 0)
  end
end
function EventShowProgressBar(actorKeyRaw, aHideTimeType)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  if hideTimeType.preemptiveStrike == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  elseif hideTimeType.overHeadUI == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
  elseif hideTimeType.bubbleBox == aHideTimeType then
    local panel = actorProxyWrapper:get():getBubbleBoxUIPanel()
    if nil == panel then
      return
    end
    settingBubbleBoxShow(actorKeyRaw, panel, actorProxyWrapper, true)
  elseif hideTimeType.murdererEnd == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingMurderer(actorKeyRaw, panel, actorProxyWrapper, true)
  end
end
function EventHideProgressBar(actorKeyRaw, aHideTimeType)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  if hideTimeType.preemptiveStrike == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  elseif hideTimeType.overHeadUI == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
  elseif hideTimeType.bubbleBox == aHideTimeType then
    local panel = actorProxyWrapper:get():getBubbleBoxUIPanel()
    if nil == panel then
      return
    end
    settingBubbleBoxShow(actorKeyRaw, panel, actorProxyWrapper, false)
  elseif hideTimeType.murdererEnd == aHideTimeType then
    local panel = actorProxyWrapper:get():getUIPanel()
    if nil == panel then
      return
    end
    settingMurderer(actorKeyRaw, panel, actorProxyWrapper, true)
  end
end
function update_Changed_StunGage(actorKeyRaw, curStun, maxStun)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local actorProxy = actorProxyWrapper:get()
  if false == (actorProxy:isMonster() or actorProxy:isPlayer()) then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingStun(actorKeyRaw, panel, actorProxyWrapper)
end
function EventActor_QuestUpdateInserted(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingQuestMarkForce(true, panel, actorProxyWrapper)
end
function EventActor_QuestUpdateDeleted(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingQuestMarkForce(false, panel, actorProxyWrapper)
end
function FromClient_preemptiveStrikeTimeChanged(targetActorKeyRaw)
  ActorInsertShowTime(attackerActorKey, hideTimeType.preemptiveStrike, 0)
end
function EventActor_QuestUI_UpdateData(actorKeyRaw, currentType, iconPath)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingQuestUI(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingFirstTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingImportantTalk(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingOtherHeadIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  sortCenterX(insertedArray)
end
function EventActor_EnduranceUpdate(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingName(actorKeyRaw, panel, actorProxyWrapper)
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end
function EventActor_HouseHoldNearestDoorChanged(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingName(actorKeyRaw, panel, actorProxyWrapper)
end
function EventActor_OnChatMessageUpdate()
  local msg
  local totalSize = getNewChatMessageCount()
  for index = 0, totalSize - 1 do
    msg = getNewChatMessage(index)
    if nil ~= msg and CppEnums.ChatType.System ~= msg.chatType and (msg.isSameChannel or CppEnums.ChatType.Client == msg.chatType) then
      local actorProxyWrapper = getActor(msg._actorKeyRaw)
      if nil ~= actorProxyWrapper then
        local panel = actorProxyWrapper:get():getBubbleBoxUIPanel()
        if nil ~= panel then
          settingBubbleBox(msg._actorKeyRaw, panel, actorProxyWrapper, msg:getContent())
        end
      end
    end
  end
end
function EventSelfPlayerWaitCommentLaunch()
  if nil == getSelfPlayer():get():getWaitCommentPanel() then
    return
  end
  settingWaitCommentLaunch(true)
  getSelfPlayer():get():showWaitComment()
end
function EventSelfPlayerWaitCommentClose()
  if nil == getSelfPlayer():get():getWaitCommentPanel() then
    return
  end
  ClearFocusEdit()
  settingWaitCommentLaunch(false)
  getSelfPlayer():get():hideWaitComment()
end
function EventOtherPlayerWaitCommentUpdate(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingWaitComment(actorKeyRaw, panel, actorProxyWrapper, true)
end
function EventOtherPlayerWaitCommentClose(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingWaitComment(actorKeyRaw, panel, actorProxyWrapper, false)
end
function FromClient_OverHeadUIShowChanged(actorKeyRaw, panel, actorProxyWrapper, isShow)
end
function FromClient_GuildMemberGradeChanged(actorKeyRaw, panel, actorProxyWrapper, guildGrade)
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
end
function EventPlayerNicknameUpdate(actorKeyRaw)
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingTitle(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_NameTag_SelfPlayerLevelUp()
  local actorProxyWrapper = getSelfPlayer()
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingName(actorProxyWrapper:getActorKey(), panel, actorProxyWrapper)
end
function FromClient_ActorInformationChanged(actorKeyRaw, panel, actorProxyWrapper)
  if nil == panel then
    return
  end
  if nil == actorProxyWrapper then
    return
  end
  settingName(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_NotifyChangeGuildTendency(actorKeyRaw, panel, actorProxyWrapper)
  if nil == panel then
    return
  end
  if nil == actorProxyWrapper then
    return
  end
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_ChangeArenaAreaAndZoneState(actorProxyWrapper, panel, isStateOn)
  if nil == actorProxyWrapper or nil == isStateOn or nil == panel then
    return
  end
  local actorKeyRaw = actorProxyWrapper:get():getActorKeyRaw()
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_InstallationInfoWarningNameTag(warningType, tentPosition, characterSSW, progressingInfo, actorWrapper, addtionalValue1)
  if nil == actorWrapper then
    return
  end
  local actorKeyRaw = actorWrapper:get():getActorKeyRaw()
  local panel = actorWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorWrapper)
end
function FromClient_InstallationInfo(actorWrapper)
  if nil == actorWrapper then
    return
  end
  local actorKeyRaw = actorWrapper:get():getActorKeyRaw()
  local panel = actorWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingHpBar(actorKeyRaw, panel, actorWrapper)
end
function FromClient_LocalWarCombatPoint(actorkeyRaw)
  if nil == actorkeyRaw then
    return
  end
  local playerActorWrapper = getPlayerActor(actorkeyRaw)
  if nil == playerActorWrapper then
    return
  end
  local panel = playerActorWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingLocalWarCombatPoint(actorkeyRaw, panel, playerActorWrapper)
end
function FromClient_EntryTeamChanged(actorkeyRaw)
  if nil == actorkeyRaw then
    return
  end
  local playerActorWrapper = getPlayerActor(actorkeyRaw)
  if nil == playerActorWrapper then
    return
  end
  local panel = playerActorWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingLocalWarCombatPoint(actorkeyRaw, panel, playerActorWrapper)
end
function FromClient_ObjectInstanceMpChanged(actorKeyRaw, panel)
  if nil == actorKeyRaw then
    return
  end
  local actorWrapper = getActor(actorKeyRaw)
  if nil == actorWrapper then
    return
  end
  if nil == panel then
    return
  end
  settingMpBar(actorKeyRaw, panel, actorWrapper)
end
function FromClient_FlashBangStateChanged(actorKeyRaw, isFlashBangOn)
  if nil == actorKeyRaw then
    return
  end
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingName(actorKeyRaw, panel, actorProxyWrapper)
  settingAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildMarkAndPreemptiveStrike(actorKeyRaw, panel, actorProxyWrapper)
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  if actorProxyWrapper:get():isPlayer() then
    settingPlayerName(actorKeyRaw, panel, actorProxyWrapper)
    settingLocalWarCombatPoint(actorKeyRaw, panel, actorProxyWrapper)
  end
  settingTitle(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_ChangeMilitiaNameTag(actorKeyRaw)
  if nil == actorKeyRaw then
    return
  end
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingName(actorKeyRaw, panel, actorProxyWrapper)
  settingAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingTitle(actorKeyRaw, panel, actorProxyWrapper)
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
end
function FromClient_ShowOverheadRank(actorKeyRaw)
  if nil == actorKeyRaw then
    return
  end
  local actorProxyWrapper = getActor(actorKeyRaw)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  local insertedArray = Array.new()
  settingLifeRankIcon(actorKeyRaw, panel, actorProxyWrapper, insertedArray)
  isOptionChange = true
end
function FromClient_ShowTotalStatTierChanged(playerActorKey)
  local actorProxyWrapper = getActor(playerActorKey)
  if nil == actorProxyWrapper then
    return
  end
  local panel = actorProxyWrapper:get():getUIPanel()
  if nil == panel then
    return
  end
  settingStatTierIcon(playerActorKey, panel, actorProxyWrapper)
end
function FromClient_ShowPlayerInfo_GuildTeamBattle(actorProxyWrapper, panel)
  if nil == actorProxyWrapper or nil == panel then
    return
  end
  local actorKeyRaw = actorProxyWrapper:get():getActorKeyRaw()
  local insertedArray = Array.new()
  settingName(actorKeyRaw, panel, actorProxyWrapper)
  settingTitle(actorKeyRaw, panel, actorProxyWrapper)
  settingAlias(actorKeyRaw, panel, actorProxyWrapper)
  settingGuildInfo(actorKeyRaw, panel, actorProxyWrapper)
  settingHpBar(actorKeyRaw, panel, actorProxyWrapper)
end

function characternametag_updatePerFrame()

  if isKeyPressed(CppEnums.VirtualKeyCode.KeyCode_SHIFT) and GlobalKeyBinder_CheckKeyPressed(CppEnums.VirtualKeyCode.KeyCode_L) then

    if g_ShowLevels then

      Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Mod - CharacterNameTag - ShowLevels: False<PAOldColor>")
      g_ShowLevels = false
    else

      Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Mod - CharacterNameTag - ShowLevels: True<PAOldColor>")
      g_ShowLevels = true
    end

    
  end
end

registerEvent("EventActorCreated", "EventActorCreated_NameTag")
registerEvent("FromClient_TendencyChanged", "FromClient_NameTag_TendencyChanged")
registerEvent("EventFirstTalk", "EventActorFirsttalk")
registerEvent("EventImportantTalk", "EventActorImportantTalk")
registerEvent("EventChangeGuildInfo", "EventActorChangeGuildInfo")
registerEvent("EventMonsterLevelColorChanged", "EventActorChangeLevel")
registerEvent("EventPlayerPvPAbleChanged", "EventActorChangeLevel")
registerEvent("hpChanged", "EventActorHpChanged")
registerEvent("EventChangeCharacterName", "EventChangeCharacterName")
registerEvent("ResponseParty_insert", "insertPartyMemberGage")
registerEvent("ResponseParty_RemovePatyNameTag", "removePartyMemberGage")
registerEvent("addDamage", "EventActorAddDamage")
registerEvent("EventShowProgressBar", "EventShowProgressBar")
registerEvent("EventHideProgressBar", "EventHideProgressBar")
registerEvent("stunChanged", "update_Changed_StunGage")
registerEvent("EventQuestTargetActorInserted", "EventActor_QuestUpdateInserted")
registerEvent("EventQuestTargetActorDeleted", "EventActor_QuestUpdateDeleted")
registerEvent("FromClient_preemptiveStrikeTimeChanged", "FromClient_preemptiveStrikeTimeChanged")
registerEvent("EventQuestUpdate", "EventActor_QuestUI_UpdateData")
registerEvent("EventHousingUpdateInstallationEndurance", "EventActor_EnduranceUpdate")
registerEvent("EventHouseHoldNearestDoorChanged", "EventActor_HouseHoldNearestDoorChanged")
registerEvent("EventChattingMessageUpdate", "EventActor_OnChatMessageUpdate")
registerEvent("EventSelfPlayerWaitCommentUpdate", "EventSelfPlayerWaitCommentLaunch")
registerEvent("EventSelfPlayerWaitCommentClose", "EventSelfPlayerWaitCommentClose")
registerEvent("EventOtherPlayerWaitCommentUpdate", "EventOtherPlayerWaitCommentUpdate")
registerEvent("EventOtherPlayerWaitCommentClose", "EventOtherPlayerWaitCommentClose")
registerEvent("FromClient_GuildMemberGradeChanged", "FromClient_GuildMemberGradeChanged")
registerEvent("EventPlayerNicknameUpdate", "EventPlayerNicknameUpdate")
registerEvent("EventSelfPlayerLevelUp", "FromClient_NameTag_SelfPlayerLevelUp")
registerEvent("FromClient_ActorInformationChanged", "FromClient_ActorInformationChanged")
registerEvent("FromClient_NotifyChangeGuildTendency", "FromClient_NotifyChangeGuildTendency")
registerEvent("FromClient_ChangeOccupyTerritoryState", "FromClient_EventActorChangeGuildInfo_HaveLand")
registerEvent("FromClient_ChangeArenaAreaRegion", "FromClient_ChangeArenaAreaAndZoneState")
registerEvent("FromClient_ChangeArenaZoneRegion", "FromClient_ChangeArenaAreaAndZoneState")
registerEvent("FromClient_InstallationInfoWarning", "FromClient_InstallationInfoWarningNameTag")
registerEvent("FromClient_InstallationInfo", "FromClient_InstallationInfo")
registerEvent("FromClient_ChangeTopRankUser", "FromClient_ChangeTopRankUser")
registerEvent("FromClient_EventActorUpdateTitleKey", "FromClient_EventActorUpdateTitleKey")
registerEvent("FromClient_LocalWarCombatPoint", "FromClient_LocalWarCombatPoint")
registerEvent("FromClient_EntryTeamChanged", "FromClient_EntryTeamChanged")
registerEvent("FromClient_FlashBangStateChanged", "FromClient_FlashBangStateChanged")
registerEvent("EventPvPModeChanged", "EventActorPvpModeChange")
registerEvent("FromClient_ObjectInstanceMpChanged", "FromClient_ObjectInstanceMpChanged")
registerEvent("FromClient_ChangeVolunteerNameTag", "FromClient_ChangeMilitiaNameTag")
registerEvent("FromClient_ShowOverheadRank", "FromClient_ShowOverheadRank")
registerEvent("FromClient_PlayerTotalStat_Changed", "FromClient_PlayerTotalStat_Changed_Handler")
registerEvent("FromClient_ShowTotalStatTierChanged", "FromClient_ShowTotalStatTierChanged")
registerEvent("FromClient_GuildTeamBattle_UpdateAttendOverHeadUI", "FromClient_ShowPlayerInfo_GuildTeamBattle")

registerEvent("FromClient_LuaTimer_UpdatePerFrame", "characternametag_updatePerFrame")