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
          "id": "10c94603-0edc-400f-b917-285b768ce3c4",
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
            "x": 104,
            "y": 64
          }
        },
        {
          "id": "810bd9a6-5cb2-49b0-b95e-d7d2698ad0c1",
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
            "x": 984,
            "y": 96
          }
        },
        {
          "id": "ed20fff2-0530-43dd-addc-e76f9dc9294c",
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
            "x": 104,
            "y": 112
          }
        },
        {
          "id": "de80c2f6-a655-4322-8e8d-69839d75b14a",
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
            "x": 104,
            "y": 160
          }
        },
        {
          "id": "6da51236-e76d-457e-922d-738260d0b0bc",
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
            "x": 104,
            "y": 208
          }
        },
        {
          "id": "ad75bba9-c0bc-4755-829d-d9ff7b09bc75",
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
            "x": 992,
            "y": 216
          }
        },
        {
          "id": "7f4e83cc-dd26-4a29-b5b2-a3650b1431a3",
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
            "x": 104,
            "y": 256
          }
        },
        {
          "id": "6ad2e196-1821-437d-a035-e03b3cef60f1",
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
            "x": 104,
            "y": 304
          }
        },
        {
          "id": "3ea42f4e-c80c-4bf7-9cc9-b0ef93174259",
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
            "x": 1000,
            "y": 336
          }
        },
        {
          "id": "cbc98b06-e594-48a1-822c-af17cfcde7e0",
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
            "x": 104,
            "y": 352
          }
        },
        {
          "id": "1de0580c-9ab6-412c-b9c7-cf54a23bf971",
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
            "x": 104,
            "y": 400
          }
        },
        {
          "id": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "A0"
                },
                {
                  "name": "A1"
                },
                {
                  "name": "A2"
                },
                {
                  "name": "A3"
                },
                {
                  "name": "B0"
                },
                {
                  "name": "B1"
                },
                {
                  "name": "B2"
                },
                {
                  "name": "B3"
                }
              ],
              "out": [
                {
                  "name": "BLU"
                },
                {
                  "name": "RED"
                },
                {
                  "name": "GRN"
                }
              ]
            },
            "params": [],
            "code": "wire [3:0] wireall_a1;\nwire [3:0] wireall_b1;\n\nassign wireall_b1 = ~{A0,A1,A2,A3};\nassign wireall_a1 = ~{B0,B1,B2,B3};\n\n\nassign BLU = (wireall_a1 > 4'd3);\nassign RED = (wireall_a1 < 4'd3);\nassign GRN = (wireall_a1 > wireall_b1);"
          },
          "position": {
            "x": 368,
            "y": 64
          },
          "size": {
            "width": 512,
            "height": 392
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1de0580c-9ab6-412c-b9c7-cf54a23bf971",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "B3"
          }
        },
        {
          "source": {
            "block": "cbc98b06-e594-48a1-822c-af17cfcde7e0",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "B2"
          }
        },
        {
          "source": {
            "block": "6ad2e196-1821-437d-a035-e03b3cef60f1",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "B1"
          }
        },
        {
          "source": {
            "block": "7f4e83cc-dd26-4a29-b5b2-a3650b1431a3",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "B0"
          }
        },
        {
          "source": {
            "block": "10c94603-0edc-400f-b917-285b768ce3c4",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "A0"
          }
        },
        {
          "source": {
            "block": "ed20fff2-0530-43dd-addc-e76f9dc9294c",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "A1"
          }
        },
        {
          "source": {
            "block": "de80c2f6-a655-4322-8e8d-69839d75b14a",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "A2"
          }
        },
        {
          "source": {
            "block": "6da51236-e76d-457e-922d-738260d0b0bc",
            "port": "out"
          },
          "target": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "A3"
          }
        },
        {
          "source": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "BLU"
          },
          "target": {
            "block": "810bd9a6-5cb2-49b0-b95e-d7d2698ad0c1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "RED"
          },
          "target": {
            "block": "ad75bba9-c0bc-4755-829d-d9ff7b09bc75",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "72c3c0b7-d4de-44a6-944e-55ce29a9a695",
            "port": "GRN"
          },
          "target": {
            "block": "3ea42f4e-c80c-4bf7-9cc9-b0ef93174259",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}