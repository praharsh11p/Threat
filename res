{
  "summary": {
    "title": "LLM Prompt Injection Testing Platform",
    "owner": "Security Project Group",
    "description": "Threat model for a Gandalf-like LLM application designed to evaluate prompt injection attacks against a large language model.",
    "id": 0
  },
  "detail": {
    "contributors": [
      "Group Member 1",
      "Group Member 2",
      "Group Member 3"
    ],
    "diagrams": [
      {
        "title": "LLM Application Data Flow Diagram",
        "id": 0,
        "diagramType": "STRIDE",
        "cells": [
          {
            "type": "tm.External",
            "name": "Security Tester",
            "description": "User attempting prompt injection attacks through the web interface.",
            "id": "ext1"
          },
          {
            "type": "tm.Process",
            "name": "Web Client Interface",
            "description": "Browser-based UI where users submit prompts and view responses.",
            "id": "proc1"
          },
          {
            "type": "tm.Process",
            "name": "Application API Server",
            "description": "Backend service responsible for routing requests and coordinating system components.",
            "id": "proc2"
          },
          {
            "type": "tm.Process",
            "name": "Prompt Security Filter",
            "description": "Analyzes prompts to detect prompt injection patterns and malicious input.",
            "id": "proc3"
          },
          {
            "type": "tm.Process",
            "name": "LLM Processing Engine",
            "description": "Large Language Model responsible for generating responses based on sanitized prompts.",
            "id": "proc4"
          },
          {
            "type": "tm.Datastore",
            "name": "Prompt Activity Database",
            "description": "Stores prompts, detected attacks, and interaction logs.",
            "id": "db1"
          },
          {
            "type": "tm.Datastore",
            "name": "Response Cache",
            "description": "Temporary storage for previously generated LLM responses.",
            "id": "db2"
          },
          {
            "type": "tm.Flow",
            "name": "Prompt Submission",
            "source": "ext1",
            "target": "proc1"
          },
          {
            "type": "tm.Flow",
            "name": "HTTPS Request",
            "source": "proc1",
            "target": "proc2"
          },
          {
            "type": "tm.Flow",
            "name": "Prompt Validation Request",
            "source": "proc2",
            "target": "proc3"
          },
          {
            "type": "tm.Flow",
            "name": "Sanitized Prompt",
            "source": "proc3",
            "target": "proc4"
          },
          {
            "type": "tm.Flow",
            "name": "Model Response",
            "source": "proc4",
            "target": "proc2"
          },
          {
            "type": "tm.Flow",
            "name": "Interaction Logs",
            "source": "proc2",
            "target": "db1"
          },
          {
            "type": "tm.Flow",
            "name": "Cached Response",
            "source": "proc4",
            "target": "db2"
          },
          {
            "type": "tm.Flow",
            "name": "Response Delivery",
            "source": "proc2",
            "target": "proc1"
          },
          {
            "type": "tm.Flow",
            "name": "Displayed Output",
            "source": "proc1",
            "target": "ext1"
          },
          {
            "type": "tm.Boundary",
            "name": "Public Internet Boundary",
            "description": "Separates external users from internal application services.",
            "id": "boundary1"
          },
          {
            "type": "tm.Boundary",
            "name": "Internal AI Infrastructure",
            "description": "Protects AI model processing and storage components.",
            "id": "boundary2"
          }
        ]
      }
    ],
    "diagramTop": 0,
    "reviewer": "Course Instructor",
    "threatTop": 0
  }
}
