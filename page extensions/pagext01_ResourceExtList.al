pageextension 50101 "CSD ResourceListExt" extends "Resource List"
//CSD1.00 - 2018-01-01 - D.E.Veloper
{
    layout
    {

        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage()
    begin
        Showtype := (Rec.GetFilter(Type) = '');
        ShowMaxField := (Rec.GetFilter(Type) = format(Rec.Type::Machine));
    end;

    var
        ShowMaxField: Boolean;
        Showtype: Boolean;
}