clasedad :: (RealFloat a) => a -> String
clasedad edad
	| edad <= 0.0 ="Bebe"
	| edad <= 11.0 = "Niño"
	| edad <= 18.0 = "Adolescente"
	| edad <= 40.0 = "Adulto Joven"
	| edad <= 60.0 = "Adulto"
	| otherwise = "Viejo"