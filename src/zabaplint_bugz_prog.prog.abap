report zabaplint_bugz_prog.

interface lif_me.
  methods with_ex raising zcx_abaplint_bugz.
  methods without_ex.
endinterface.

class lcl_abaplint_bugz_ex definition
  final
  create public .

  public section.

    interfaces lif_me.

    methods with_ex raising zcx_abaplint_bugz.
    methods without_ex.
    methods inst_with_ex raising zcx_abaplint_bugz.
    methods inst_without_ex.
endclass.



class lcl_abaplint_bugz_ex implementation.

  method inst_without_ex.
    data lo type ref to zcl_abaplint_bugz_ex.
    create object lo.
    lo->with_ex( ). " must fail
  endmethod.

  method inst_with_ex.
    data lo type ref to zcl_abaplint_bugz_ex.
    create object lo.
    lo->with_ex( ).
  endmethod.

  method without_ex.
    zcl_abaplint_bugz_ex=>swith_ex( ). " must fail
  endmethod.


  method with_ex.
    zcl_abaplint_bugz_ex=>swith_ex( ).
  endmethod.

  method lif_me~without_ex.
    zcl_abaplint_bugz_ex=>swith_ex( ). " must fail
  endmethod.


  method lif_me~with_ex.
    zcl_abaplint_bugz_ex=>swith_ex( ).
  endmethod.

endclass.
