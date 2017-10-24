local UIBase = import("UI/UIBase")
--if not Cookie then
--    Cookie = Slua.GetClass('KSFramework.Cookie')
--end

local UIBillboard = {}
extends(UIBillboard, UIBase)

function UIBillboard.New(controller)
    local newUIBillboard = new(UIBillboard)
    newUIBillboard.Controller = controller
    return newUIBillboard
end



function UIBillboard:OnInit(controller)
    self.Controller = controller
   -- self.TitleLabel = self:GetUIText('Title')
   -- self.ContentLabel = self:GetUIText('Content')

     local btn = self.CloseButton

    print(string.format("Controller type: %s, Button type full name: %s", type(self.Controller), btn:GetType().FullName))

    --if UnityEngine and  UnityEngine.Vector3 then -- static code binded!
        btn.onClick:RemoveAllListeners()
        btn.onClick:AddListener(function()
            print('Click the button!!!')
            UIModule.Instance:CloseWindow("Billboard")
        end)
        print('Success bind button OnClick!')
    --else
        --Log.Warning("Not found UnityEngine static code! No AddListener to the button")
    --end
end

function UIBillboard:OnOpen()
    -- local rand
    -- --rand = Cookie.Get('UIBillboard.RandomNumber')
    -- --if not rand then
    --     rand = math.random(1,3)
    -- --    Cookie.Set('UIBillboard.RandomNumber', rand)
    -- --end
    -- local billboardSetting = AppSettings.BillboardSettings.Get('Billboard' .. tostring(rand))
    -- -- self.TitleLabel.text = "This is a title"
    -- -- self.ContentLabel.text = "Here is content!"
    -- self.TitleLabel.text = billboardSetting.Title
    -- self.ContentLabel.text = billboardSetting.Content
end

return UIBillboard
