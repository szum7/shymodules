 '/api/Process/GetProcessPermissions?processId='

{
	processId: 200
	processPermissions: []
	swimLanes: [
		{
			displayFormRule: null
			displayFormRuleEntities: []
			editFormRule: null
			editFormRuleEntities: []
			name: "Uszodasávhoz nem rendelt elemek"
			processSteps: [
				displayFormRule: "true"
				displayFormRuleEntities: [
					{
						formField: (FormFieldDTO)
						isContribute: true
						isTask: false
						member: null
						name: "Létrehozta"
						type: "FormField"
					}, {
						formField: (FormFieldDTO)
						isContribute: true
						isTask: true
						member: null
						name: "Módosította"
						type: "FormField"
					}, {
						formField: null
						isContribute: true
						isTask: true
						member: {
							id: 4,
							memberType: null,
							name: "Székely Krisztina",
							type: "User"
						}
						name: "Székely Krisztina"
						type: ""UserOrGroup""
					}
				]
				editFormRule: "true"
				editFormRuleEntities: null
				graphObjectGuid: "9637d504-a734-492e-adc4-a9a518625836"
				id: 748
				isCustomDisplayRule: false
				isCustomEditRule: false
				name: "START"
			]
		}
	]
}

formField: {errorOnSave: false, valueObject: null, builtin: false, value: null, sqlname: "CreatedBy", …} (FormFieldDTO)


Id
ProcessId
ProcessStepId
InstanceId
MemberId
FieldId
Edit
Submit
Delete
IsTask