menu = {
	pizza: [
		"cheese",
		"veggie",
		"pineapple and ham",
		"sausage and pepper"
	],
	calzone: [
		"plain",
		"ricotta",
		"sausage"
	],
	desserts: [
		"chocolate creme pie",
		"rootbeer float",
		"brownie"
	],
	drinks:  {
		beer: [
			"IPA",
			"porter",
			"cheap"
			],
		soda: [
			"lime",
			"orange",
			"lemon"
			]
	}
}

p menu[:pizza][0]

menu[:drinks][:beer].delete("IPA")
p menu[:drinks][:beer]

menu[:drinks][:soda].push("grape")
p menu[:drinks][:soda]

menu[:calzone].push("spinach")
p menu[:calzone]