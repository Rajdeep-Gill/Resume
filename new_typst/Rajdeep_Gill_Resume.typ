#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Rajdeep Gill"
#let email = "hi.rajdeepgill@gmail.com"
#let github = "github.com/rajdeep-gill"
#let linkedin = "linkedin.com/in/gill-rajdeep"
#let phone = "+1 (431) 998-9785"

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
  institution: "University of Manitoba",
  location: "Winnipeg, MB",
  dates: "May 2026",
  degree: "Bachelor of Science, Computer Engineering (GPA: 4.45/4.5)",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

== Work Experience

#work(company: "Software Engineer Intern", title: "Robinhood", location: "Toronto, ON", dates: dates-helper(
  start-date: "May 2025",
  end-date: "Present",
))
- Reduced customer margin calls by 37% and boosted margin trading activity by 23% by launching a real-time maintenance dashboard with embedded trade execution, surfacing key risk indicators like maintenance ratio and equity percentage
- Architected a cross-platform margin experience using a server-driven UI approach to unify business logic across Web, iOS, and Android, driving a 17% increase in margin usage
- Accelerated the adoption of a new Protobuf design system by implementing its foundational components, adding a logging framework to improve observability, and resolving initial implementation gaps
- Repaired the core integration suite for the margin experience and added 20+ test suites, achieving 86% code coverage
#work(
  company: "Undergraduate Research Assistant",
  title: "Biosensors Research Lab",
  location: "Winnipeg, MB",
  dates: dates-helper(
    start-date: "May 2024",
    end-date: "Dec 2024",
  ),
)
- Achieved 85% accuracy in predicting cell viability from 10,000+ diffraction images using a custom CNN, establishing a viable, non-invasive measurement method for cell health
- Built an interactive model validation GUI in Python that rendered SHAP values to provide real-time explanations of prediction drivers, enabling researchers to debug model behavior on a per-cell basis
- Architected an end-to-end data processing pipeline that boosted morphological parameter extraction accuracy by 17% and cut pre-processing runtime in half (50% reduction) using Python's multiprocessing library
- Replaced a high-risk system of manually-shared hard drives with a centralized MySQL database, eliminating data loss and versioning conflicts, and enabling complex, cross-experiment queries for the first time


#work(
  company: "Undergraduate Research Assistant",
  title: "Biosensors Research Lab",
  location: "Winnipeg, MB",
  dates: dates-helper(
    start-date: "May 2023",
    end-date: "Aug 2023",
  ),
)
- Engineered a general-purpose Python control framework for the lab's oscilloscope, abstracting low-level hardware commands into a high-level API that empowered researchers to script and automate entire experimental sequences.
- Slashed data analysis runtime by over 90% (1 hour to \<6 minutes) by refactoring legacy Python scripts, replacing inefficient loops with vectorized NumPy operations
- Developed a novel classification system using a Gaussian Mixture Model to determine cell viability from time-series impedance data, creating a probabilistic tool for assessing sample health

== Projects

#project(
  name: "Void - AI App Builder (Next.js, TypeScript, Prisma, Docker)",
)
- Developed an app to generate and deploy web apps from user prompts, integrating a usage-based Stripe billing system to monetize user compute time and API token consumption
- Implemented a persistent background job queue to process long-running AI build tasks asynchronously, allowing users to submit jobs and receive the completed result at a later time, even after closing the browser
- Utilized Docker for user code sandboxing, secure code execution and real-time application previews

#project(
  name: "Collaborative Document Editor (React, TypeScript, Socket.io)",
)
- Engineered a collaborative text editor for up to 20 simultaneous users by broadcasting text operations, cursor locations, and online statuses,  via WebSockets, achieving a sub-250ms synchronization latency
- Integrated Gemini to provide real-time suggestions for text, formatting and content generation, reducing user writing time

/*
#project(
  name: "Distributed Image Processing (C++, OpenMPI, OpenCV)",
)
- Accelerated the processing of gigapixel-scale images by 3.8x compared to a single-threaded approach by designing an OpenMPI pipeline that partitioned data across a 4-node cluster
*/

== Skills
- *Programming Languages*: Python, TypeScript, JavaScript, C/C++, HTML/CSS, Java
- *Frameworks & Tools*: React, Next.js, PyTorch, Flask, Django, Express.js, AWS (EC2, S3), GCP, oAuth
