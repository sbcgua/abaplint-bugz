class lcl_abaplint_bugz_deep definition
  final
  create public .

  public section.

    interfaces lif_me2.
endclass.

class lcl_abaplint_bugz_deep implementation.

  method lif_me2~without_ex.
    zcl_abaplint_bugz_ex=>swith_ex( ). " must fail
  endmethod.

endclass.
