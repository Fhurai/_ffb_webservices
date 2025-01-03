/**
 * Event : Load DOM Content.
 */
document.addEventListener("DOMContentLoaded", function () {
  getDataTests();
});

/**
 * Converts a result array into an array of array of results, sorted by checked classes.
 * @param {Array} checks Vanilla check array
 * @returns Array Reword check arrays, sorted by checked classes.
 */
function convertResultsArray(checks) {
  // Variable initialization.
  let results = [];

  Object.keys(checks).forEach((element) => {
    // Browsing through keys of array.

    // Constants for libelle parts & class table.
    const libelleParts = element.split("_");
    const table = libelleParts[0];

    if (!(table in results)) {
      // If table doesn't exist already, it is created in the result array.
      results[table] = [];
    }

    // Remove the class table from libelle parts array.
    libelleParts.splice(0, 1);

    // Push new data array with new libelle from reworked libelle array.
    results[table].push([libelleParts.join("_"), checks[element]]);
  });

  // Return variable.
  return results;
}

/**
 * Method to get data from tests
 */
async function getDataTests() {
  ["parameters", "entities", "namedEntities", "complexEntities"].map(
    // Browsing through class types.
    (element) => {
      // Creation url to get
      const url = `${this.location.href}utilities/Json.php?tests=${element}`;

      // Spinner element created and appended to body while method is executed.
      const spinner = document.createElement("div");
      spinner.classList = "spinner";
      document.querySelector("body").appendChild(spinner);

      // Fetch data from url.
      fetch(url)
        // Data converted to json.
        .then((res) => res.json())
        // Then data is manipulated.
        .then((data) => {
          // Get sum of all checks results.
          const success = Boolean(
            Object.values(data).reduce((bool, a) => bool && a, true)
          );

          // Get reworked checks array
          const checks = convertResultsArray(data);

          // Dropdown panel created and added to body.
          const dropdownPanel = document.createElement("div");
          document.querySelector("body").appendChild(dropdownPanel);

          // Class and label/input added to dropdown panel.
          dropdownPanel.classList = "dropdown-panel";
          dropdownPanel.innerHTML = `<label for='toggle${element}' class='${
            success ? "success" : "fail"
          }'>Total ${element} checks : ${
            success
              ? Object.values(data).length + " tests succeeded"
              : "At least 1 failed check"
          } </label>`;
          dropdownPanel.innerHTML += `<input id='toggle${element}' type='checkbox' />`;

          // Content container created and added to dropdown panel
          const content = document.createElement("div");
          dropdownPanel.appendChild(content);

          // Class added to content container.
          content.classList = "content";

          // Tables container created and added to content container.
          const tables = document.createElement("div");
          content.appendChild(tables);

          // Class added to tables container.
          tables.classList = "tables";

          Object.keys(checks).forEach((key) => {
            // Browsing through classes tables.

            // Table created and added to tables containers.
            const table = document.createElement("table");
            tables.appendChild(table);

            // Thead created and added to table.
            const thead = document.createElement("thead");
            table.appendChild(thead);

            // Tr added to thead.
            thead.innerHTML =
              `<tr><th colspan='3'>${key}</th></tr>` +
              `<tr><th colspan='3'><a href='${url}' target='_blank'>Go json</a></th></tr>` +
              `<tr><th>Method</th><th>Subject</th><th>Success</th></tr>`;

            // Tbody created and added to table.
            const tbody = document.createElement("tbody");
            table.appendChild(tbody);

            Array.from(checks[key]).forEach((values) => {
              // Browsing through checks values

              // Tr created and added to tbody.
              const tr = document.createElement("tr");
              tbody.appendChild(tr);

              // Class added to tr depending of value of check.
              tr.classList = values[1] ? "success" : "fail";

              // Rework of label to remove the class name of it.
              const labelParts = values[0].split("_");
              labelParts.splice(0, 1);

              tr.innerHTML = `<td>${values[0].split("_")[0]}</td><td>${labelParts.join("_")}</td><td>${(values[1] ? "success" : "fail")}</td>`;
            });
          });
        })
        // if error is catched.
        .catch((err) => {
          console.log(err);
        })
        // Finally, after all.
        .finally(() => {
          spinner.remove();
        });
    }
  );
}
