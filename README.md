# jmaa
Home of the MAA language. This parser is implemented in Java, hence JMAA.

### Setup
Store you ANTLR library location in an environment variable:
```
export ANTLR_LOCATION='/path/to/your/antlr-4.5-complete.jar'
```
Add these aliases to your `~/.bashrc` for ease of use:
```
alias antlr4-tool='java -cp "$ANTLR_LOCATION:." org.antlr.v4.Tool'
alias antlr4-run='java -cp "$ANTLR_LOCATION:." org.antlr.v4.runtime.misc.TestRig'
alias antlr4-javac='javac -cp "$ANTLR_LOCATION:."'
```

### Test
Run the following commands in the order they appear:
```
antlr4-tool maa.g4
antlr4-javac maa*.java
antlr4-run maa assignment_closure -gui
```
