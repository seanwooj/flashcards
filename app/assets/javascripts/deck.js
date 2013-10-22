window.fc = window.fc || {};

fc.deck = ( function( $ ){
  // will have to refactor this to correspond to the actual views that exist
  var init = function( card_container ) {
    var $card_container = $( card_container );
    set_up_bindings( $card_container );
    var $initial_card = get_initial_card( $card_container );
    show_initial_card( $initial_card );
  } 

  var set_up_bindings = function(){
  
  }

  var get_initial_card = function( $card_container ){
    var initial_card = $card_container.find( ".card" )[0];
    return $( initial_card );
  }

  var show_initial_card = function( $initial_card ) {
    $initial_card.addClass("current");
  }

  return { init: init }
}( jQuery ) );
