page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    ApplicationArea = All;
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; Rec."Seminar Nos.")
                {

                }
                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {

                }
                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {

                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        if not Rec.Get() then begin
            Rec.Init();
            ;
            Rec.Insert();
        end;
    end;
}