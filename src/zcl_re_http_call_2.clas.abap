class ZCL_RE_HTTP_CALL_2 definition
  public
  final
  create public .

public section.
    INTERFACES if_oo_adt_classrun.

protected section.
private section.
ENDCLASS.



CLASS ZCL_RE_HTTP_CALL_2 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*    TRY.
*        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
*          i_name                  = 'P15_JRCHUCK'
*          i_service_instance_name = 'OutboundCommunication'
*          i_authn_mode = if_a4c_cp_service=>service_specific ).
*
*        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( i_destination = lo_destination ).
**          lo_http_client->get_http_request( )->set_uri_path( '/sap/' ).
**          lo_http_client->accept_cookies( i_allow = abap_true ).
**          lo_http_client->set_csrf_token( ).
*
*        DATA(lo_request) = lo_http_client->get_http_request( ).
**lo_request->set_uri_path( '/search').
*
*
*        lo_request->set_form_field(
*            i_name  = 'limitTo'
*            i_value = '[nerdy]' ).
*
*        DATA(lo_response) = lo_http_client->execute( i_method = if_web_http_client=>get ).
*
*        out->write( lo_response->get_text( ) ).
*
*      CATCH cx_root INTO DATA(lx_exception).
*        out->write( lx_exception->get_text( ) ).
*    ENDTRY.
  ENDMETHOD.
ENDCLASS.
