function abrirMenu() {
    document.getElementById('menu').classList.toggle('menu-aberto');
    document.getElementById('main').classList.toggle('menu-aberto');
}

function abrirSubMenu() {
    document.getElementById('submenu').classList.toggle('submenu-aberto');
    setinha = document.getElementById('setinha');
    setinha.style.transform = setinha.style.transform == 'rotate(180deg)' ? '' : 'rotate(180deg)';
}
