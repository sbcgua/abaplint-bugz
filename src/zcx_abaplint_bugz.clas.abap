class ZCX_ABAPLINT_BUGZ definition
  public
  inheriting from CX_STATIC_CHECK
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_ABAPLINT_BUGZ IMPLEMENTATION.


method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
endmethod.
ENDCLASS.
