# localFlora
Listing of the plants in Corktown Commons, their properties and uses


PLANT
-has_many properties (one of each type)
-image (entire plant)
-uses [ string, string, etc]
-type (tree, shrub)
-location (wetland, meadow, shady_hill)
-has_one flower
-has_one fruit

Properties
-type: (leaf, stalk, root, flower, fruit)
-image
-edible: bool
-uses [ string, string, etc]
-belongs_to plant

Fruit
-has_pit:bool
-colour
-size
-fruiting month
-descended_from property

Flower
-colours [string, string]
-num_petals
-clustered:bool
-flowering month
-descended_from property

