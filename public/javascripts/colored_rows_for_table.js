let trs = document.querySelectorAll('tbody>tr')
for (let i = 0; i < trs.length - 1; i++) {
    let v1 = parseFloat(trs[i].children[1].textContent)
    let v2 = parseFloat(trs[i + 1].children[1].textContent)
    let v3 = parseFloat(trs[i].children[2].textContent)
    let v4 = parseFloat(trs[i + 1].children[2].textContent)
    let v5 = parseFloat(trs[i].children[3].textContent)
    let v6 = parseFloat(trs[i + 1].children[3].textContent)
    if ((v1 == 0 || v1 * v2 < 0) && (v3 == 0 || v3 * v4 < 0) && (v5 == 0 || v5 * v6 < 0)) trs[i].style.background = '#cc9999'
    else if (((v1 == 0 || v1 * v2 < 0) && (v3 == 0 || v3 * v4 < 0)) || ((v1 == 0 || v1 * v2 < 0) && (v5 == 0 || v5 * v6 < 0)) || ((v3 == 0 || v3 * v4 < 0) && (v5 == 0 || v5 * v6 < 0))) trs[i].style.background = '#ff9999'
    else if ((v1 == 0 || v1 * v2 < 0) || (v3 == 0 || v3 * v4 < 0) || (v5 == 0 || v5 * v6 < 0)) trs[i].style.background = '#ffcccc'
}
