# Name
Extra materials for the "Multi-state survival models", a short course at the 2018 International Society for Clinical Biostatistics (ISCB) meetings in Melbourne, Austrailia

The focus of the short course is the rationale, use, and interpretation of multi-state models, and is focused on a set of example analyses.  There is not time to carefully walk through the computer code for these analyses, but attendees who want to use the ideas need to be able to see and study the code.  This contains allof the source code for the slides are knitr (.Rnw) files.

## Usage
To reproduce a copy of the slide deck type "make class18.pdf".  That is probably not what you want to do, however.  The more useful scenario will be to open one of the .Rnw files in Rstudio.  Because I did not want to show or walk through the code, almost all of the code chunks have the "echo=FALSE" option (normally set globally at the top of the file).  This keeps them from being printed on the slides, but all of the code is there and you will see it in the code window, and you can execute it.

The one exception to exectuion is the mcsa.Rnw file, since it uses data that I am not able to share.  Also, the underlying hidden markov model (HMM) code takes several hours to run on a large compute cluster.  (This is the very last part of the course as an 'other things you can do' discussion.)

A second document class2.Rnw is not part of the slides, and goes into more
detail about one of the example data sets.

Some details
* I prefer to edit a set of smaller files rather than one big one. As a consequence the slide deck is broken into 9 parts.
    * The class18.tex file is a wrapper that contains the title, the code to add a Mayo Clinic logo to each page (important to my employer), table of contents, and a set of include statements; the last is the important part and tells the order in which the .Rnw components appear.
    * If you wanted one of the .Rnw pieces to be standalone, copy the documentclas and begin document lines to the top of the Rnw file, add the \end{document} line to the bottom, and Rstudio will take care of the rest.
* The .Rnw files use latex rather than markdown syntax
    * I think that latex is the best tool possible for creating a mathematical textbook (though bookdown getting closer).
    * I have written a statistical textbook.
    * Once you have learned Latex, it is an easy and powerful for knitr documents.
    * Nevertheless, I tell newcomers to learn markdown instead.  It is _almost_ as good and much, much simpler.
    * The provided code is still easy to read, but I recognize that markedown would have been marginally better for you, the users.  My apologies.

## Duration

This site will stay up for a few weeks after the course, but the material is by its very nature ephemeral.  I aim to use slides as an aid and not as content: most of what I will say is not there.  This makes them less useful as standalone material.

