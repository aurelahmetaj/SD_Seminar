table 50104 "CSD Seminar Comment Line"

{
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registartion Header","Posted Seminar Reg. Header";
            OptionCaption = 'Seminar, Seminar Registration, Posted Seminar Registration';

        }
        field(20; "Documment Line No."; Integer)
        {
            Caption = 'Documment Line No.';
        }
        field(30; "No."; Code[20])
        {
            TableRelation = if ("Table Name" = const(Seminar)) "CSD Seminar";
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(60; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(70; "Comment"; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(PK; "Table Name", "Documment Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}