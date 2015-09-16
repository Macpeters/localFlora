# localFlora
Listing of the plants in Corktown Commons, their properties and uses


PLANT
-has_many properties (one of each type)
-image (entire plant)
-uses:text
-cautions:text
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

Stalk
-shape (round, square, flat)
-climbing:bool
-has_hairs:bool
-colour

Leaf
-arrangement (opposite, alternate, whorled)
-margin: (lobed, serrated, entire)
-colour
-tip (accute, obtuse, truncated)
-base (acuminate, oblique, acute, sagittate, rounded, hastate, cordate, truncate)

Root
-runners:bool
-root_type (taproot, fibrous)
