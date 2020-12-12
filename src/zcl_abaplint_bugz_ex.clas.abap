class zcl_abaplint_bugz_ex definition
  public
  final
  create public .

  public section.
    methods with_ex raising zcx_abaplint_bugz.
    methods without_ex.

    class-methods swith_ex raising zcx_abaplint_bugz.
    class-methods swithout_ex.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_ABAPLINT_BUGZ_EX IMPLEMENTATION.


  method swithout_ex.
    raise exception type zcx_abaplint_bugz. " must fail
  endmethod.


  method swith_ex.
    raise exception type zcx_abaplint_bugz.
  endmethod.


  method without_ex.
    raise exception type zcx_abaplint_bugz. " must fail
  endmethod.


  method with_ex.
    raise exception type zcx_abaplint_bugz.
  endmethod.
ENDCLASS.
