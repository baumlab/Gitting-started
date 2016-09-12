
Writing your first R markdown document? This is your first stop for all those fiddly formatting issues.

More general markdown writing tutorials:

<http://assemble.io/docs/Cheatsheet-Markdown.html>

## In-text symbols and simple formatting

^superscript^  
~subscript~  
$^\circ$ is a degree symbol  

*text in italics*  
**text in bold**  

\* to add any symbol on your keyboard (e.g. * to describe wildcard WoS search or interaction term): 

To comment out a section, highlight and press command + shift + C. Or use:  
<!--this comments out a section-->

### Equations

$ for equation  
$$ equation on separate line  

Not sure yet how to number equations.....

### For Figures, Tables and code chunks

eval=FALSE [ignore code chunk]  
include = FALSE  
warning =  
echo =  

## To call in an image file

```
![Figure.caption](../filepath.png)
```

### References
entry = NULL will only read citations that are referred to in the text  
append = FALSE will overwrite the bib file each time you knit your document  
file = is the new final bib file    


Compile your reference list with:

```{r, warning=FALSE, message=FALSE, echo=FALSE}
write.bibtext(entry=NULL, file='knitcitations.bib', append=FALSE)
```
#### Call R commands in text

`r {some R command}`
