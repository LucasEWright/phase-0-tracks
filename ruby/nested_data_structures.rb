garage = {
	port_1: {
		cars: {
		fun_car: 'mustang',
		date_car: 'bmw'
		},
		bikes: [
			"mountain",
			"fixie"
		]
		},
	port_2: {
		cars: {
		fun_car: 'challenger',
		date_car: 'jaguar'
		},
		bikes: [
			"ATV",
			"motorcycle"
		]
	},
	port_3: {
		cars: {
		fun_car: 'corvette',
		date_car: []
		},
		bikes: [
			"dirt bike",
			"scooter"
		]
	},
}

garage[:port_3][:bikes][0]
garage[:port_1][:cars]
garage[:port_1][:cars][:fun_car]
garage[:port_3][:cars][:date_car].push("benz") 
garage[:port_3][:cars][:date_car]
garage[:port_2][:bikes].reverse







}