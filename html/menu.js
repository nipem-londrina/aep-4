function abrirMenu() {
    $('#menu').toggleClass('menu-aberto');
    $('#main').toggleClass('menu-aberto');
}

function abrirSubMenu() {
    $('#submenu').toggleClass('submenu-aberto');
    $('#setinha').css('transform', $('#setinha').css('transform') == 'none' ? 'rotate(180deg)' : '')
}
