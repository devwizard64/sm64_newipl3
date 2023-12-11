#include "../face.h"

DYNLIST dyn_spot[] =
{
	dStart(),
	dStartGroup("spotvg"),
	dMakeVertex(0, 0, 0),
	dMakeVertex(1, -1, 1),
	dSetParmf(1, 0),
	dMakeVertex(1, 1, 1),
	dSetParmf(1, 0),
	dMakeVertex(-1, 1, 1),
	dSetParmf(1, 0),
	dMakeVertex(-1, -1, 1),
	dSetParmf(1, 0),
	dMakeVertex(0, 0, 0),
	dEndGroup("spotvg"),
	dStartGroup("spotpg"),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 2),
	dSetParmi(1, 3),
	dSetParmi(1, 5),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 3),
	dSetParmi(1, 4),
	dSetParmi(1, 5),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 4),
	dSetParmi(1, 1),
	dSetParmi(1, 5),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 1),
	dSetParmi(1, 2),
	dSetParmi(1, 5),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 0),
	dSetParmi(1, 3),
	dSetParmi(1, 2),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 0),
	dSetParmi(1, 4),
	dSetParmi(1, 3),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 0),
	dSetParmi(1, 1),
	dSetParmi(1, 4),
	dMakeObj(6, NULL),
	dSetMaterial(NULL, 0),
	dSetParmi(1, 0),
	dSetParmi(1, 2),
	dSetParmi(1, 1),
	dEndGroup("spotpg"),
	dUseObj("spotpg"),
	dMapVertices("spotvg"),
	dMakeObj(10, "spot_sh"),
	dSetNodeGroup("spotvg"),
	dSetPlaneGroup("spotpg"),
	dSetParmf(1, 0.1),
	dEnd(),
};