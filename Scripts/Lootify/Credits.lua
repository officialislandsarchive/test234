return function(tab)

function Message(Title1, Context1, ButtonText1, DurationTime)
	Fluent:Notify({
		Title = Title1,
		Content = Context1,
		Duration = DurationTime
	})
end
    
    local credits = tab:AddSection("Credits")

    credits:AddParagraph({
        Title = "Developer", 
        Content = "Developed by Albert",
    })
    credits:AddParagraph({
        Title = "Contact", 
        Content = "For support or inquiries, reach out via Discord server discord.gg/zynovascripts.",
    })

    credits:AddButton({
        Title = "Copy Discord Link",
        Description = "Click to copy the Discord server link to your clipboard.",
        Callback = function()
            setclipboard("https://discord.gg/zynovascripts")
		Message("Discord Link Copied!", "The Discord link has been successfully copied.", "Got it!", "5")
        end
    })
end
