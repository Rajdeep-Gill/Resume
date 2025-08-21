#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "ngmi"
#let email = "ngmi@gmail.com"
#let github = "github.com/ngmi"
#let linkedin = "linkedin.com/in/ngmi"
#let phone = "+1 (123) 123-123"

#show: resume.with(
  author: name,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */
== Education

#edu(
  institution: "University of bumfuck no where??",
  location: "bumfuck, nowhere",
  dates: "May 2026",
  degree: "Bachelor of Science, Computer Engineering (GPA: 3.98/4)",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

== Work Experience

#work(company: "Software Engineer Intern", title: "Robinhood", location: "Toronto, ON", dates: dates-helper(
  start-date: "May 2025",
  end-date: "Present",
))

#work(
  company: "Undergraduate Research Assistant",
  title: "Same research lab",
  location: "no where",
  dates: dates-helper(
    start-date: "May 2024",
    end-date: "Dec 2024",
  ),
)
- Achieved 85% accuracy in predicting cell viability from 10,000+ diffraction images using a custom CNN, establishing a viable, non-invasive measurement method for cell health, ( also published 2 papers and idk if i i should put it somewhere)
- Built an interactive model validation GUI in Python that rendered SHAP values to provide real-time explanations of prediction drivers, enabling researchers to debug model behavior on a per-cell basis
- Architected an end-to-end data processing pipeline that boosted morphological parameter extraction accuracy by 17% and cut pre-processing runtime in half (50% reduction) using Python's multiprocessing library
- Replaced a high-risk system of manually-shared hard drives with a centralized MySQL database, eliminating data loss and versioning conflicts, and enabling complex, cross-experiment queries for the first time


#work(company: "Undergraduate Research Assistant", title: "Research Lab", location: "no where", dates: dates-helper(
  start-date: "May 2023",
  end-date: "Aug 2023",
))
- Engineered a general-purpose Python control framework for the lab's oscilloscope, abstracting low-level hardware commands into a high-level API that empowered researchers to script and automate entire experimental sequences.
- Slashed data analysis runtime by over 90% (1 hour to \<6 minutes) by refactoring legacy Python scripts, replacing inefficient loops with vectorized NumPy operations
- Developed a novel classification system using a Gaussian Mixture Model to determine cell viability from time-series impedance data, creating a probabilistic tool for assessing sample health

== Projects

#project(
  name: "AI App Builder (Next.js, TypeScript, Prisma, Docker)",
)
- Developed an app to generate and deploy web apps from user prompts, integrating a usage-based Stripe billing system to monetize user compute time and API token consumption
- Implemented asynchronous background job processing for AI model inference, reducing response times and preventing UI blocking during long-running code generation tasks
- Utilized Docker for user code sandboxing, secure code execution and application previews

#project(
  name: "Collaborative Document Editor (React, TypeScript, Socket.io)",
)
- Engineered a collaborative text editor for up to 20 simultaneous users by broadcasting text operations, cursor locations, and online statuses,  via WebSockets, achieving a sub-250ms synchronization latency
- Integrated Gemini to provide real-time AI-powered suggestions for text, formatting and content generation


#project(
  name: "Distributed Image Processing (C++, OpenMPI, OpenCV)",
)
- Accelerated the processing of gigapixel-scale images by 3.8x compared to a single-threaded approach by designing an OpenMPI pipeline that partitioned data across a 4-node cluster
== Skills
- *Programming Languages*: Python, TypeScript, JavaScript, C/C++, HTML/CSS, Java
- *Frameworks*: React, Next.js, PyTorch, Flask, Django, Express.js
- *Cloud*: AWS, GCP, Docker
