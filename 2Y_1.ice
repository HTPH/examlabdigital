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
          "id": "8b55c71b-fc94-42fb-888f-6e9e667bf8f5",
          "type": "basic.output",
          "data": {
            "name": "PMOD",
            "virtual": false,
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "P1_A1",
                "value": "4"
              },
              {
                "index": "5",
                "name": "P1_A2",
                "value": "2"
              },
              {
                "index": "4",
                "name": "P1_A3",
                "value": "47"
              },
              {
                "index": "3",
                "name": "P1_A4",
                "value": "45"
              },
              {
                "index": "2",
                "name": "P1_A7",
                "value": "3"
              },
              {
                "index": "1",
                "name": "P1_A8",
                "value": "48"
              },
              {
                "index": "0",
                "name": "P1_A9",
                "value": "46"
              }
            ]
          },
          "position": {
            "x": 2472,
            "y": 136
          }
        },
        {
          "id": "28939442-dada-467d-9532-e0504710f00f",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "35"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 704,
            "y": 456
          }
        },
        {
          "id": "05d6c1dc-0f42-42e6-bf5c-01d77d6d5d83",
          "type": "basic.output",
          "data": {
            "name": "PMOD",
            "virtual": false,
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "P1_B1",
                "value": "43"
              },
              {
                "index": "5",
                "name": "P1_B2",
                "value": "38"
              },
              {
                "index": "4",
                "name": "P1_B3",
                "value": "34"
              },
              {
                "index": "3",
                "name": "P1_B4",
                "value": "31"
              },
              {
                "index": "2",
                "name": "P1_B7",
                "value": "42"
              },
              {
                "index": "1",
                "name": "P1_B8",
                "value": "36"
              },
              {
                "index": "0",
                "name": "P1_B9",
                "value": "32"
              }
            ]
          },
          "position": {
            "x": 2352,
            "y": 728
          }
        },
        {
          "id": "2bd9cfe2-710c-41b9-aee2-c4c0df2f45a5",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "22",
            "local": false
          },
          "position": {
            "x": 856,
            "y": 328
          }
        },
        {
          "id": "165fb126-4551-4823-b452-275c8d5d4a5a",
          "type": "6a50747141af6d1cfb3bb9d0093fb94862ff5a65",
          "position": {
            "x": 856,
            "y": 456
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "979287e0-bd16-4306-acec-841c82251fbf",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "AI",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "DO",
                  "range": "[6:0]",
                  "size": 7
                }
              ]
            },
            "params": [],
            "code": "assign DO =\n    (AI == 4'b0000) ? 7'h7E :\n    (AI == 4'b0001) ? 7'h30 :\n    (AI == 4'b0010) ? 7'h6D :\n    (AI == 4'b0011) ? 7'h79 :\n    (AI == 4'b0100) ? 7'h33 :\n    (AI == 4'b0101) ? 7'h5B :\n    (AI == 4'b0110) ? 7'h5F :\n    (AI == 4'b0111) ? 7'h70 :\n    (AI == 4'b1000) ? 7'h7F :\n    (AI == 4'b1001) ? 7'h7B :\n    (AI == 4'b1010) ? 7'h77 :\n    (AI == 4'b1011) ? 7'h1F :\n    (AI == 4'b1100) ? 7'h4E :\n    (AI == 4'b1101) ? 7'h3D :\n    (AI == 4'b1110) ? 7'h4F :\n    (AI == 4'b1111) ? 7'h47 : 7'h00;"
          },
          "position": {
            "x": 1752,
            "y": 96
          },
          "size": {
            "width": 416,
            "height": 336
          }
        },
        {
          "id": "c6be5339-69b1-407b-b874-037818fff303",
          "type": "cf063d0f800f5d3d651260d7483ca1bb7ea1e533",
          "position": {
            "x": 2264,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "92868f23-83cc-4f23-874e-fe3d3191e39f",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "AI",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "DO",
                  "range": "[6:0]",
                  "size": 7
                }
              ]
            },
            "params": [],
            "code": "assign DO =\n    (AI == 4'b0000) ? 7'h7E :\n    (AI == 4'b0001) ? 7'h30 :\n    (AI == 4'b0010) ? 7'h6D :\n    (AI == 4'b0011) ? 7'h79:\n    (AI == 4'b0100) ? 7'h33 :\n    (AI == 4'b0101) ? 7'h5B :\n    (AI == 4'b0110) ? 7'h5F :\n    (AI == 4'b0111) ? 7'h70 :\n    (AI == 4'b1000) ? 7'h7F :\n    (AI == 4'b1001) ? 7'h7B :\n    (AI == 4'b1010) ? 7'h77 :\n    (AI == 4'b1011) ? 7'h1F :\n    (AI == 4'b1100) ? 7'h4E :\n    (AI == 4'b1101) ? 7'h3D :\n    (AI == 4'b1110) ? 7'h4F :\n    (AI == 4'b1111) ? 7'h47 : 7'h00;"
          },
          "position": {
            "x": 1728,
            "y": 688
          },
          "size": {
            "width": 416,
            "height": 336
          }
        },
        {
          "id": "0e72b8a8-5ab7-4147-90bd-039bcb346daa",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "Value",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "Value2",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            },
            "params": [],
            "code": "reg Value = 9;\nreg Value2 = 1;\nalways @(posedge clk) begin\n    if (Value == 0) begin\n        Value <= 9;\n        if (Value2 > 0) begin\n            Value2 <= Value2 - 1;\n        end \n        else if (Value2 == 0) begin\n            Value2 <= 1;\n        end\n    end\n    else begin\n        Value <= Value - 1;\n    end\nend"
          },
          "position": {
            "x": 1048,
            "y": 408
          },
          "size": {
            "width": 432,
            "height": 272
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "28939442-dada-467d-9532-e0504710f00f",
            "port": "out"
          },
          "target": {
            "block": "165fb126-4551-4823-b452-275c8d5d4a5a",
            "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "2bd9cfe2-710c-41b9-aee2-c4c0df2f45a5",
            "port": "constant-out"
          },
          "target": {
            "block": "165fb126-4551-4823-b452-275c8d5d4a5a",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "165fb126-4551-4823-b452-275c8d5d4a5a",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "0e72b8a8-5ab7-4147-90bd-039bcb346daa",
            "port": "clk"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "0e72b8a8-5ab7-4147-90bd-039bcb346daa",
            "port": "Value"
          },
          "target": {
            "block": "979287e0-bd16-4306-acec-841c82251fbf",
            "port": "AI"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "979287e0-bd16-4306-acec-841c82251fbf",
            "port": "DO"
          },
          "target": {
            "block": "c6be5339-69b1-407b-b874-037818fff303",
            "port": "aec4abb3-0e84-42a9-b3ad-6ad27d2c6846"
          },
          "vertices": [],
          "size": 7
        },
        {
          "source": {
            "block": "0e72b8a8-5ab7-4147-90bd-039bcb346daa",
            "port": "Value2"
          },
          "target": {
            "block": "92868f23-83cc-4f23-874e-fe3d3191e39f",
            "port": "AI"
          },
          "size": 4
        },
        {
          "source": {
            "block": "92868f23-83cc-4f23-874e-fe3d3191e39f",
            "port": "DO"
          },
          "target": {
            "block": "05d6c1dc-0f42-42e6-bf5c-01d77d6d5d83",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "c6be5339-69b1-407b-b874-037818fff303",
            "port": "897baf3f-be87-4ecf-b3cc-61334437e1b0"
          },
          "target": {
            "block": "8b55c71b-fc94-42fb-888f-6e9e667bf8f5",
            "port": "in"
          },
          "size": 7
        }
      ]
    }
  },
  "dependencies": {
    "6a50747141af6d1cfb3bb9d0093fb94862ff5a65": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            },
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    },
    "cf063d0f800f5d3d651260d7483ca1bb7ea1e533": {
      "package": {
        "name": "not-x7-verilog",
        "version": "2.1",
        "description": "not-x7-verilog: 7-bits not gate. Verilog implementation",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "897baf3f-be87-4ecf-b3cc-61334437e1b0",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 568,
                "y": 56
              }
            },
            {
              "id": "aec4abb3-0e84-42a9-b3ad-6ad27d2c6846",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[6:0]",
                "clock": false,
                "size": 7
              },
              "position": {
                "x": 0,
                "y": 56
              }
            },
            {
              "id": "e3bb41e3-1944-4946-9675-c2dbe2e49fcf",
              "type": "basic.info",
              "data": {
                "info": "Input",
                "readonly": true
              },
              "position": {
                "x": 16,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "8408dd5f-945f-4a89-9790-7752813d4e91",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 584,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "b16825d3-d6a8-4202-8db9-81d90113793c",
              "type": "basic.code",
              "data": {
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                },
                "params": [],
                "code": "//-- Not Gate\nassign o =  ~i;"
              },
              "position": {
                "x": 160,
                "y": 16
              },
              "size": {
                "width": 344,
                "height": 136
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "aec4abb3-0e84-42a9-b3ad-6ad27d2c6846",
                "port": "out"
              },
              "target": {
                "block": "b16825d3-d6a8-4202-8db9-81d90113793c",
                "port": "i"
              },
              "size": 7
            },
            {
              "source": {
                "block": "b16825d3-d6a8-4202-8db9-81d90113793c",
                "port": "o"
              },
              "target": {
                "block": "897baf3f-be87-4ecf-b3cc-61334437e1b0",
                "port": "in"
              },
              "size": 7
            }
          ]
        }
      }
    }
  }
}