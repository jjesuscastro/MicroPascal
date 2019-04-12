/*
 * [CMPILER X22] Machine Project: MiniPascal
 * Castro, Joesei Jesus G. 11531398
 * De Guzman, Jersey Adelei C. 11544201
 * Medina, Chelsey Anne ? 115
 *
 * References:
 * pascal.g4 from https://github.com/antlr/grammars-v4
 */
package micropascal;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;
import pascal.pascalLexer;

public class MicroPascal {
    static List<Variable> variables = new ArrayList<Variable>();
    
    static class Variable {
        private String name = null, value = null, type = null;
        
        public Variable(String name, String type, String value) {
            this.name = name;
            this.type = type;
            this.value = value;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }
    }
    
    public static void main(String[] args) {
        List<Token> tokens = Tokenize(args[0]);
        Queue<Token> tokensQueue = new LinkedList<>(tokens);
        
//        for(int i = 0; i < tokens.size(); i++)
//            System.out.println(((Token)tokens.get(i)).getText());
        
        /*
            0 :  name
            1 : type
            2: value
        */
        
        checkHeader(tokensQueue);
    }
    
    static List<Token> Tokenize(String fileName) {
        File file = new File(fileName);
        FileInputStream fis = null;
        
        try {
            fis = new FileInputStream(file);
            ANTLRInputStream input = new ANTLRInputStream(fis);
            pascalLexer lexer = new pascalLexer(input);
            CommonTokenStream tempTokens = new CommonTokenStream(lexer);
            tempTokens.fill();
//            pascalParser parser = new pascalParser(tempTokens);
//            ParseTree tree = parser.program();
//            System.out.println(tree.toStringTree(parser));
            
            fis.close();
            return tempTokens.getTokens();
            
//            System.out.println(newTokens.size());
//            pascalParser parser = new pascalParser(tokens);
//            ParseTree tree = parser.program();
//            fis.close();
//            // Create a generic parse tree walker that can trigger callbacks
//            ParseTreeWalker walker = new ParseTreeWalker();
//            // Walk the tree created during the parse, trigger callbacks
//            System.out.println(); // print a \n after translation
//            
//            System.out.println(tree.toStringTree(parser));
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
    
    static void Parse(Queue<Token> tokensQueue) {
        Token currToken = tokensQueue.remove();
        
        Trace(tokensQueue, currToken);
    }
    
    static void Parse(Queue<Token> tokensQueue, Token currToken) {        
        Trace(tokensQueue, currToken);
    }
    
    static void Trace(Queue<Token> tokensQueue, Token currToken) {
//        System.out.println("currToken = " + currToken.getText());
        if(currToken.getText().equals("write") || currToken.getText().equals("writeln"))
            Write(tokensQueue, currToken);
        else if(currToken.getText().equals("readln"))
            System.out.println("call readln function");
        else if(currToken.getText().equals("for"))
            ForLoop(tokensQueue, currToken);
        else if(currToken.getText().equals("if"))
            IfStatement(tokensQueue, currToken);
        else if(currToken.getText().equals("end")) {
            currToken = tokensQueue.remove();
            if(!currToken.getText().equals("."))
                ThrowError(currToken, ".");
            else
                System.exit(0);
        }
        else {
            CheckReservedWords(currToken);
            if(!CheckVariable(currToken))
                ThrowUndeclaredError(currToken);
            VariableAssignments(tokensQueue, currToken);
        }
    }
    
    static void VariableAssignments(Queue<Token> tokensQueue, Token incomingToken) {
        Variable variable = GetVariableByName(incomingToken);
        
        Token currToken = tokensQueue.remove();
        if(!currToken.getText().equals(":="))
            ThrowError(currToken, ":=");
        
        currToken = tokensQueue.remove();
        if(variable.getType().equals("integer")) {
            if(!CheckInt(currToken))
                ThrowError(currToken);
            else
                variable.setValue(currToken.getText());
        } else if (variable.getType().equals("boolean")) {
            if(currToken.getText().equals("true") || currToken.getText().equals("false"))
                System.out.println("not nice");
            else
                variable.setValue(currToken.getText());
        } else if (variable.getType().equals("char")) {
            if(!CheckChar(currToken))
                ThrowError(currToken);
            else
                variable.setValue(currToken.getText());
        } else {
            variable.setValue(currToken.getText());
        }
        
        currToken = tokensQueue.remove();
        
        if(!currToken.getText().equals(";"))
            ThrowError(currToken, ";");
            
        Parse(tokensQueue);
    }
    
    static void VariableAssignments(Queue<Token> tokensQueue) {
        Token currToken;
        String name, value, type;
        while(!tokensQueue.peek().getText().equals("begin")) {
            name = null;
            value = null;
            type = null;
            
            currToken = tokensQueue.remove();
            CheckReservedWords(currToken);
            name = currToken.getText();
            
            currToken = tokensQueue.remove();
            if(!currToken.getText().equals(":"))
                ThrowError(currToken, "VariableAssignment", ":");
            
            currToken = tokensQueue.remove();
            CheckType(currToken);
            type = currToken.getText();
            
            currToken = tokensQueue.remove();
            if(currToken.getText().equals("=")) {
                currToken = tokensQueue.remove();
                value = currToken.getText();
                
                currToken = tokensQueue.remove();
                if(currToken.getText().equals(";")) {
                    // do nothing
                } else {
                    ThrowError(currToken, "VariableAssignment", ";");
                }
            } else if(currToken.getText().equals(";")) {
                //do nothing
            } else {
                ThrowError(currToken, "VariableAssignment", ";");
            }
            
            variables.add(new Variable(name, type, value));
        }
    }
    
    static void IfStatement(Queue<Token> tokensQueue, Token incomingToken) {
        Token currToken = tokensQueue.remove();
        
        if(!currToken.getText().endsWith("("))
            ThrowError(currToken, "IfStatement", "(");
        
        currToken = tokensQueue.remove();
        CheckReservedWords(currToken);
    }
    
    static void ForLoop(Queue<Token> tokensQueue, Token incomingToken) {
        Token currToken = tokensQueue.remove();
        
        CheckReservedWords(currToken); //The token after "for" should be an identifier and therefor should not be a reserved word.
        
        currToken = tokensQueue.remove();
        
        if(!currToken.getText().equals(":="))
            ThrowError(currToken, "ForLoop", ":=");
        
        currToken = tokensQueue.remove();
        
        boolean isStartNegative = false;
        if(currToken.getText().equals("-")) {
            isStartNegative = true;
            currToken = tokensQueue.remove();
        }
        
        int startValue = Integer.MAX_VALUE;
        if(!CheckInt(currToken))
            ThrowError(currToken, "ForLoop", "integer");
        else
            startValue = isStartNegative ? -1 * Integer.parseInt(currToken.getText()) : Integer.parseInt(currToken.getText());
        
        currToken = tokensQueue.remove();
        
        if(!currToken.getText().equals("to"))
            ThrowError(currToken, "ForLoop", "to");
        
        currToken = tokensQueue.remove();
        
        boolean isEndNegative = false;
        if(currToken.getText().equals("-")) {
            isEndNegative = true;
            currToken = tokensQueue.remove();
        }
        
        int endValue = Integer.MAX_VALUE;
        if(!CheckInt(currToken))
            ThrowError(currToken, "ForLoop", "integer");
        else
            endValue = isEndNegative ? -1 * Integer.parseInt(currToken.getText()) : Integer.parseInt(currToken.getText());
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals("do"))
            ThrowError(currToken, "ForLoop", "do");
        
        Queue<Token> tempQueue = new LinkedList<>();
        currToken = tokensQueue.remove();
        if(currToken.getText().equals("begin")) {
            while(!tokensQueue.peek().getText().equals("end")) {
                tempQueue.add(tokensQueue.remove());
            }
        }
        else {
            ThrowError(currToken, "ForLoop", "begin");
        }
        
        Queue<Token> loopQueue = new LinkedList<>();
        for(int i = startValue; i < endValue; i++){
            for(int j = 0; j < tempQueue.toArray().length; j++){
                loopQueue.add((Token)tempQueue.toArray()[j]);
            }
        }
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals("end"))
            ThrowError(currToken, "ForLoop", "end");
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals(";"))
            ThrowError(currToken, "ForLoop", ";");
        
        Parse(ConcatenateQueue(loopQueue, tokensQueue));
    }
    
    static void Write(Queue<Token> tokensQueue, Token incomingToken) {
//        System.out.println("Entered write function");
        Token currToken = tokensQueue.remove();
        if(currToken.getText().equals(";")) {
            if (incomingToken.getText().equals("writeln")) {
                System.out.println();
            }
            
            Parse(tokensQueue);
            return;
        }
            
        if (!currToken.getText().equals("(")) {
            ThrowError(currToken, "Write", "(");
            
        }

        currToken = tokensQueue.remove();
        String print = null;
        
//        System.out.println("currToken = " + currToken.getText());

        if (currToken.getText().equals(")")) {
            print = "";

            currToken = tokensQueue.remove();
            if (!currToken.getText().equals(";")) {
                ThrowError(currToken, "Write", ";");
            }

            System.out.print(print);

            if (incomingToken.getText().equals("writeln")) {
                System.out.println();
            }

            return;
        } else if (CheckNumeric(currToken)) {
            print = currToken.getText();
        } else if(CheckVariable(currToken)){
            Variable variable = GetVariableByName(currToken);
            if(variable.getType().equals("string")) {
                StringBuilder printValue = new StringBuilder(variable.getValue());
                printValue.deleteCharAt(0);
                printValue.deleteCharAt(printValue.length()-1);
                print = printValue.toString();
            } else {
            print = variable.getValue();
            }
        }else if (currToken.getText().charAt(0) == '\'') {
            StringBuilder currString = new StringBuilder(currToken.getText());

            if (currString.charAt(currString.length() - 1) != '\'') {
                ThrowError(currToken);
            } else {
                currString.deleteCharAt(0);
                currString.deleteCharAt(currString.length() - 1);
            }

            print = currString.toString();
        } else {
            ThrowError(currToken, "Write", ")");
        }

        currToken = tokensQueue.remove();
        if (!currToken.getText().equals(")")) {
            ThrowError(currToken, "Write", ")");
        }

        currToken = tokensQueue.remove();
        if (!currToken.getText().equals(";")) {
            ThrowError(currToken, "Write", ";");
        }

        System.out.print(print);

        if (incomingToken.getText().equals("writeln")) {
            System.out.println();
        }

        Parse(tokensQueue);
    }
    
    static void checkHeader(Queue<Token> tokensQueue) {
        Token currToken = tokensQueue.remove();
        if(currToken.getText().equals("program"))   
        {
            currToken = tokensQueue.remove();
            CheckReservedWords(currToken);
            currToken = tokensQueue.remove();
            if(!currToken.getText().equals(";"))
                ThrowError(currToken, ";");
            
            checkHeader(tokensQueue);
        } else if (currToken.getText().equals("var")) {
            VariableAssignments(tokensQueue);
            checkHeader(tokensQueue);
        } else if (currToken.getText().equals("begin")) {
            Parse(tokensQueue);
        } else {
            ThrowError(currToken,"begin");
        }
    }
    
    static void ThrowError(Token token) {
        System.out.println("syntax error at line " + token.getLine());
        System.exit(0);
    }
    
    static void ThrowError(Token token, String expected) {
        System.out.println("syntax error at line " + token.getLine() + " expected '" + expected + "' found '" + token.getText() + "'");
        System.exit(0);
    }
    
    static void ThrowError(Token token, String function, String expected) {
        System.out.println("syntax error at line " + token.getLine() + " in funcion " + function + " expected '" + expected + "' found '" + token.getText() + "'");
        System.exit(0);
    }
    
    static void ThrowUndeclaredError(Token token) {
        System.out.println("undeclared variable " + token.getText() + " at line " + token.getLine());
        System.exit(0);
    }
    
    static Variable GetVariableByName(Token token) {
        for(int i = 0; i < variables.size(); i++) {
            if(((Variable)variables.get(i)).getName().equals(token.getText()))
                return variables.get(i);
        }
        
        return null;
    }
    
    static boolean CheckVariable(Token token) {
        for(int i = 0; i < variables.size(); i++) {
            if(((Variable)variables.get(i)).getName().equalsIgnoreCase(token.getText()))
                return true;
        }
        
        return false;
    }
    
    static void CheckType(Token token) {
        List dataTypes = new ArrayList<String>();
        dataTypes.add("char");
        dataTypes.add("integer");
        dataTypes.add("boolean");
        dataTypes.add("string");
        
        if(!dataTypes.contains(token.getText()))
            ThrowError(token);
    }
    
    static void CheckReservedWords(Token token) {
        List reservedWords = new ArrayList<String>();
        reservedWords.add("and");
        reservedWords.add("array");
        reservedWords.add("asm");
        reservedWords.add("begin");
        reservedWords.add("break");
        reservedWords.add("case");
        reservedWords.add("const");
        reservedWords.add("constructor");
        reservedWords.add("continue");
        reservedWords.add("destructor");
        reservedWords.add("div");
        reservedWords.add("do");
        reservedWords.add("downto");
        reservedWords.add("else");
        reservedWords.add("end");
        reservedWords.add("FALSE");
        reservedWords.add("file");
        reservedWords.add("for");
        reservedWords.add("function");
        reservedWords.add("goto");
        reservedWords.add("if");
        reservedWords.add("implementation");
        reservedWords.add("in");
        reservedWords.add("inline");
        reservedWords.add("interface");
        reservedWords.add("label");
        reservedWords.add("mod");
        reservedWords.add("nil");
        reservedWords.add("not");
        reservedWords.add("object");
        reservedWords.add("of");
        reservedWords.add("on");
        reservedWords.add("operator");
        reservedWords.add("or");
        reservedWords.add("packed");
        reservedWords.add("procedure");
        reservedWords.add("program");
        reservedWords.add("record");
        reservedWords.add("repeat");
        reservedWords.add("set");
        reservedWords.add("shl");
        reservedWords.add("shr");
        reservedWords.add("string");
        reservedWords.add("then");
        reservedWords.add("to");
        reservedWords.add("TRUE");
        reservedWords.add("type");
        reservedWords.add("unit");
        reservedWords.add("until");
        reservedWords.add("uses");
        reservedWords.add("var");
        reservedWords.add("while");
        reservedWords.add("with");
        reservedWords.add("xor");
        reservedWords.add("as");
        reservedWords.add("class");
        reservedWords.add("dispose");
        reservedWords.add("except");
        reservedWords.add("exit");
        reservedWords.add("exports");
        reservedWords.add("finalization");
        reservedWords.add("finally");
        reservedWords.add("inherited");
        reservedWords.add("initialization");
        reservedWords.add("is");
        reservedWords.add("library");
        reservedWords.add("new");
        reservedWords.add("on");
        reservedWords.add("out");
        reservedWords.add("property");
        reservedWords.add("raise");
        reservedWords.add("self");
        reservedWords.add("threadvar");
        reservedWords.add("try");
        reservedWords.add("absolute");
        reservedWords.add("abstract");
        reservedWords.add("alias");
        reservedWords.add("assembler");
        reservedWords.add("cdecl");
        reservedWords.add("cppdecl");
        reservedWords.add("default");
        reservedWords.add("export");
        reservedWords.add("external");
        reservedWords.add("forward");
        reservedWords.add("generic");
        reservedWords.add("index");
        reservedWords.add("local");
        reservedWords.add("name");
        reservedWords.add("nostackframe");
        reservedWords.add("oldfpccall");
        reservedWords.add("override");
        reservedWords.add("pascal");
        reservedWords.add("private");
        reservedWords.add("protected");
        reservedWords.add("public");
        reservedWords.add("published");
        reservedWords.add("read");
        reservedWords.add("register");
        reservedWords.add("reintroduce");
        reservedWords.add("safecall");
        reservedWords.add("softfloat");
        reservedWords.add("specialize");
        reservedWords.add("stdcall");
        reservedWords.add("virtual");
        reservedWords.add("write");
        
        if(reservedWords.contains(token.getText()))
            ThrowError(token);
    }
    
    static boolean CheckChar(Token token) {
        return token.getText().matches("[a-zA-Z_0-9 ]+!@#$%^&*()_=-[]{}\\|;':\",./<>?"); 
        
    }
    
    static boolean CheckInt(Token token) {
        return token.getText().matches("\\-?\\d+");  //match a number with optional '-' and decimal.
    }
    
    static boolean CheckNumeric(Token token) {
        return token.getText().matches("-?\\d+(\\.\\d+)?");  //match a number with optional '-' and decimal.
    }
    
    static Queue<Token> ConcatenateQueue(Queue<Token> newQueue, Queue<Token> oldQueue) {
        List tokens = new ArrayList<Token>();
        
        
        for(int i = 0; i < newQueue.toArray().length; i++)
            tokens.add(newQueue.toArray()[i]);
        
        for(int i = 0; i < oldQueue.toArray().length; i++)
            tokens.add(oldQueue.toArray()[i]);
        
        return new LinkedList<>(tokens);
    }
}
