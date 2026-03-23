{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "3ade0e58-39e3-45d4-b11a-f6a022a6ccb9",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A1",
                "value": "4"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -136,
            "y": 72
          }
        },
        {
          "id": "b9cb3b8b-bd83-4fc5-afd0-7c62dc63b8f6",
          "type": "basic.output",
          "data": {
            "name": "R",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_B1",
                "value": "43"
              }
            ]
          },
          "position": {
            "x": 1112,
            "y": 128
          }
        },
        {
          "id": "659890b0-e049-425e-b2b5-74025e1e942a",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A2",
                "value": "2"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -136,
            "y": 136
          }
        },
        {
          "id": "4a5f0fd6-cade-44a7-b4da-d2051df78aa2",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A3",
                "value": "47"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -136,
            "y": 216
          }
        },
        {
          "id": "b4bf4cf8-a4bf-4a82-b052-7ba2575c0a76",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A4",
                "value": "45"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -144,
            "y": 296
          }
        },
        {
          "id": "33f633cf-ecf1-40b0-a52d-992dc5fb14d4",
          "type": "basic.output",
          "data": {
            "name": "G",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_B2",
                "value": "38"
              }
            ]
          },
          "position": {
            "x": 1128,
            "y": 312
          }
        },
        {
          "id": "dec61df3-4140-41f5-a375-47f238ccba25",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A7",
                "value": "3"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -128,
            "y": 376
          }
        },
        {
          "id": "c7990467-78f4-4bea-88aa-1a06eb7b6060",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A8",
                "value": "48"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -120,
            "y": 448
          }
        },
        {
          "id": "ca33dac7-c372-46a9-954d-c362b54076a9",
          "type": "basic.output",
          "data": {
            "name": "B",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_B3",
                "value": "34"
              }
            ]
          },
          "position": {
            "x": 1144,
            "y": 496
          }
        },
        {
          "id": "17b87137-66c1-4e07-9b75-ae836bb7f3a0",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A9",
                "value": "46"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -112,
            "y": 536
          }
        },
        {
          "id": "9ee1dad6-16b8-4d26-a12e-bb32d6d32826",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "P1_A10",
                "value": "44"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -136,
            "y": 616
          }
        },
        {
          "id": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "SW0"
                },
                {
                  "name": "SW1"
                },
                {
                  "name": "SW2"
                },
                {
                  "name": "SW3"
                },
                {
                  "name": "SW4"
                },
                {
                  "name": "SW5"
                },
                {
                  "name": "SW6"
                },
                {
                  "name": "SW7"
                }
              ],
              "out": [
                {
                  "name": "RED"
                },
                {
                  "name": "GRN"
                },
                {
                  "name": "BLU"
                }
              ]
            },
            "params": [],
            "code": "wire [7:0] sw;\r\nassign sw = ~{SW7, SW6, SW5, SW4, SW3, SW2, SW1, SW0};\r\n\r\nwire [2:0] count = sw[0] + sw[1] + sw[2] + sw[3] + sw[4] + sw[5] + sw[6] + sw[7];\r\n\r\nassign BLU = (count >= 3);\r\n\r\nassign RED = (count == 1) && (sw[4:0] != 5'b00000);\r\n\r\nassign GRN = (count == 1) && (sw[5] || sw[7]);"
          },
          "position": {
            "x": 168,
            "y": 64
          },
          "size": {
            "width": 872,
            "height": 632
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3ade0e58-39e3-45d4-b11a-f6a022a6ccb9",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW0"
          }
        },
        {
          "source": {
            "block": "659890b0-e049-425e-b2b5-74025e1e942a",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW1"
          }
        },
        {
          "source": {
            "block": "4a5f0fd6-cade-44a7-b4da-d2051df78aa2",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW2"
          }
        },
        {
          "source": {
            "block": "b4bf4cf8-a4bf-4a82-b052-7ba2575c0a76",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW3"
          }
        },
        {
          "source": {
            "block": "dec61df3-4140-41f5-a375-47f238ccba25",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW4"
          }
        },
        {
          "source": {
            "block": "c7990467-78f4-4bea-88aa-1a06eb7b6060",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW5"
          }
        },
        {
          "source": {
            "block": "17b87137-66c1-4e07-9b75-ae836bb7f3a0",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW6"
          }
        },
        {
          "source": {
            "block": "9ee1dad6-16b8-4d26-a12e-bb32d6d32826",
            "port": "out"
          },
          "target": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "SW7"
          }
        },
        {
          "source": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "BLU"
          },
          "target": {
            "block": "ca33dac7-c372-46a9-954d-c362b54076a9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "GRN"
          },
          "target": {
            "block": "33f633cf-ecf1-40b0-a52d-992dc5fb14d4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "dbfb3037-db99-4c28-a6dd-368aa6a8a3b6",
            "port": "RED"
          },
          "target": {
            "block": "b9cb3b8b-bd83-4fc5-afd0-7c62dc63b8f6",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}