const { app, screen, BrowserWindow, Tray, Menu } = require('electron');
const path = require('path');

let top = {};

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) { // eslint-disable-line global-require
  app.quit();
}

const createWindow = () => {
  // Create the browser window.
  top.win = new BrowserWindow({
    // show: false,
    minimizable: false,
    width: screen.getPrimaryDisplay().size.width - 100,
    height: screen.getPrimaryDisplay().size.height - 100,
    // icon: iconPath,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
      webSecurity: true,
    }
  });
  top.win.loadFile(path.join(__dirname, 'index.html'));
  // top.win.webContents.openDevTools();
  top.win.on("close", ev => {
    // console.log(ev.sender);
    ev.sender.webContents.sendInputEvent({type: 'keyDown', keyCode: 'HIDEWINDOW'});
    ev.sender.hide();
    ev.preventDefault(); // prevent quit process
  });

  top.tray = new Tray(path.join(__dirname, 'index-xs.png'));
  // top.tray = new Tray(nativeImage.createEmpty());
  const menu = Menu.buildFromTemplate([
    {
      label: 'Show', click: function () {
        top.win.show();
      }
    },
    {
      type: 'separator',
    },
    {role: "quit"},
  ]);
  top.tray.setContextMenu(menu);
  top.tray.on('clicked', function() {
    top.tray.popContextMenu();
 })
};

app.on('ready', createWindow);

app.on("before-quit", ev => {
  top.win.removeAllListeners("close");
  // release windows
  top = null;
});

app.on('activate', () => {
  // On OS X it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow();
  }
});

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and import them here.
