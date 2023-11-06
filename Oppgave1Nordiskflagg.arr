function nordisk-flagg(land) {
  var flagg;

  if (land == "Norge") {
    flagg = createNorwegianFlag();
  } else if (land == "Sverige") {
    flagg = createSwedishFlag();
  } else if (land == "Island") {
    flagg = createIcelandicFlag();
  } else if (land == "Danmark") {
    flagg = createDanishFlag();
  }

  return flagg;
}

function createNorwegianFlag() {
  return frame(
    overlay(
      rectangle(16, 120, "solid", "dark-blue"),
      (-52, 0),
      overlay(
        rectangle(170, 16, "solid", "dark-blue"),
        (0, -52),
        overlay(
          rectangle(30, 120, "solid", "white"),
          (-45, 0),
          overlay(
            rectangle(170, 30, "solid", "white"),
            (0, 0),
            rectangle(170, 120, "solid", "fire-brick")
          )
        )
      )
    )
  );
}

function createSwedishFlag() {
  return frame(
    overlay(
      rectangle(16, 120, "solid", "gold"),
      (-52, 0),
      overlay(
        rectangle(170, 16, "solid", "gold"),
        (0, -52),
        rectangle(170, 120, "solid", "steel-blue")
      )
    )
  );
}

function createIcelandicFlag() {
  return frame(
    overlay(
      rectangle(16, 120, "solid", "fire-brick"),
      (-52, 0),
      overlay(
        rectangle(170, 16, "solid", "fire-brick"),
        (0, -52),
        overlay(
          rectangle(30, 120, "solid", "white"),
          (-45, 0),
          overlay(
            rectangle(170, 30, "solid", "white"),
            (0, 0),
            rectangle(170, 120, "solid", "navy")
          )
        )
      )
    )
  );
}

function createDanishFlag() {
  return frame(
    overlay(
      rectangle(160, 1200, "solid", "white"),
      (-520, 0),
      overlay(
        rectangle(1700, 160, "solid", "white"),
        (0, -520),
        rectangle(1700, 1200, "solid", "fire-brick")
      )
    )
  );
} 