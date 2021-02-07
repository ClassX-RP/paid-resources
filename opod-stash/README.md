## Thank You ##
Before installing I would like to thank you for purchasing my script, The following is a detailed README on how to install the script and explaining some of the config a little.
Installation is extremely simple but the README is long purely because it is so detailed that anyone can install it, So if you have experience in code then it should only take you about 2-3 minutes to install and only about 10 minutes if you have to read the full README, more updates to come in the future. Please send me suggestions on Discord and I'll consider adding them in.

#### IMPORTANT ####
It is important that whenever you are done building your Stash Houses you need to restart your server, If this isnt done you will not be able to access the inventory of the Stash House as the database hasn't yet created the inventory.

## How to install ##
If you would like to use ESX Inventory HUD you need to move `INSTALL ME/stash.lua` into `esx_inventoryhud/client`
Then you need to edit the esx_inventoryhud's fxmanifest.lua

In client_scripts add `client/stash.lua` above `client/player.lua`,

#### For Example ####
```
client_scripts {
  "@es_extended/locale.lua",
  "client/main.lua",
  "client/stash.lua",
  "client/player.lua",
  "locales/en.lua",
  "config.lua"
}
```

## Editing InventoryHUD ##
### STEP 1 ###
Then locate `inventory.js` in `esx_inventoryhud/html/js` and goto around `line 21`, then you need to add the following into the if statement: 

```
else if (type === 'stash'){
  $('info-div').show()
}
```

#### For Example ####
```
if (type === "normal") {
  $(".info-div").hide();
  } else if (type === "trunk") {
  $(".info-div").show();
  } else if (type === "property") {
  $(".info-div").hide();
  } else if (type === "stash") {
  $(".info-div").hide();
  } else if (type === "glovebox") {
  $(".info-div").show();
  } else if (type === "player") {
  $(".info-div").show();
  } else if (type === "vault") {
  $(".info-div").show();
  } else if (type === "motel") {
  $(".info-div").show();
  } else if (type === "shop") {
  $(".info-div").show();
}
```

### STEP 2 ###
Then scroll down to around `line 330` and you should find another if statement then add the following:
```
else if (type === "stash" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromStash", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
}
```

#### For Example ####
```
if (type === "trunk" && itemInventory === "second") {
disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromTrunk", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "property" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromProperty", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "stash" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromStash", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "glovebox" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromGlovebox", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "player" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromPlayer", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "vault" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromVault", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "motel" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromMotel", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "shop" && itemInventory === "second") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/TakeFromShop", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
}
```

### STEP 3 ###
One last step, Similarily you need to scroll down abit to the next statements below it around the `line 390` and add the following to the if statement:

```
else if (type === "stash" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoStash", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
}
```
#### For Example ####
if (type === "trunk" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoTrunk", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "property" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoProperty", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "stash" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoStash", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "glovebox" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoGlovebox", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "vault" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoVault", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "motel" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoMotel", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
} else if (type === "player" && itemInventory === "main") {
  disableInventory(500);
  $.post("http://esx_inventoryhud/PutIntoPlayer", JSON.stringify({
  item: itemData,
  number: parseInt($("#count").val())
  }));
}

## Installation Complete ##
Now you should be all good, If you have any errors feel free to join my discord for any support / suggestions, discord.gg/fsnuBaD
Make sure to import the SQL file to avoid any potential errors

### Tips for the Config ###
- If you are using an anticheat system you would need to edit Config.SharedObject to be the required version for your anticheat.