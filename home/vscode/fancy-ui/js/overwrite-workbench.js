const quickInputWidgetLineItemHeight = 40;
const sidebarLineItemHeight = 40;

async function loadJsFile(path, callback, isImport) {
  const basePath = '../../../../';
  const resp = await fetch(
    (path.startsWith('./') ? path : basePath + path) + '.js'
  )
  const respText = await resp.text();
  const newText = callback ? await callback(respText) : respText;
  const blob = new Blob([newText], { type: 'application/javascript' });
  const url = URL.createObjectURL(blob);

  return isImport ? await import(url) : url;
}

function replaceQuickInputWidgetLineItemHeight(text, lineItemHeight) {
  // command panel item height
  // getHeight(i){return i instanceof iO?30:i.saneDetail?44:22}
  return text.replace(
    /(44:)22(?=})/g,
    (_, prefix) => `${prefix}${lineItemHeight}`
  );
}

function replaceSidebarLineItemHeight(text, lineItemHeight) {
  // item height
  const replacement = (_, prefix) => `${prefix}${lineItemHeight}`
  return text
    .replace(/(eight\([^)]*?\)\{return )22(?!\d)/g, replacement)
    .replace(/(ITEM_HEIGHT=)22(?!\d)/g, replacement)
    .replace(/(\*)22(?!\d)/g, replacement)
    .replace(/(:)22(?=})/g, replacement);
}

await loadJsFile(
  './workbench',
  async (text) => {
    const mainJsPath = 'vs/workbench/workbench.desktop.main'
    const mainJsUrl = await loadJsFile(mainJsPath, text =>
      replaceSidebarLineItemHeight(
        replaceQuickInputWidgetLineItemHeight(text, quickInputWidgetLineItemHeight),
        sidebarLineItemHeight
      )
    );
    return text.replace(mainJsPath, mainJsUrl + '#');
  },
  true
)
