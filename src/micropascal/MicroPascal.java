/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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

/**
 *
 * @author jjoes
 */
public class MicroPascal {
    public static void main(String[] args) {
        List tokens = Tokenize(args[0]);
        Queue<Token> tokensQueue = new LinkedList<>(tokens);
        
//        for(int i = 0; i < tokens.size(); i++)
//            System.out.println(((Token)tokens.get(i)).getText());
        
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
        
        if(currToken.getText().equals("write") || currToken.getText().equals("writeln"))
            System.out.println("call write/writeln function");
        else if(currToken.getText().equals("readln"))
            System.out.println("call readln function");
        else if(currToken.getText().equals("for"))
            ForLoop(tokensQueue, currToken);
        else if(currToken.getText().equals("if"))
            IfStatement(tokensQueue, currToken);
        else
            ThrowError(currToken);
        
        
    }
    
    static void IfStatement(Queue<Token> tokensQueue, Token incomingToken) {
        Token currToken = tokensQueue.remove();
        
        if(!currToken.getText().endsWith("("))
            ThrowError(currToken, "(");
    }
    
    static void ForLoop(Queue<Token> tokensQueue, Token incomingToken) {
        Token currToken = tokensQueue.remove();
        
        CheckReservedWords(currToken); //The token after "for" should be an identifier and therefor should not be a reserved word.
        
        currToken = tokensQueue.remove();
        
        if(!currToken.getText().equals(":="))
            ThrowError(currToken, ":=");
        
        currToken = tokensQueue.remove();
        
        boolean isStartNegative = false;
        if(currToken.getText().equals("-")) {
            isStartNegative = true;
            currToken = tokensQueue.remove();
        }
        
        int startValue = Integer.MAX_VALUE;
        if(!CheckInt(currToken))
            ThrowError(currToken, "integer");
        else
            startValue = isStartNegative ? -1 * Integer.parseInt(currToken.getText()) : Integer.parseInt(currToken.getText());
        
        currToken = tokensQueue.remove();
        
        if(!currToken.getText().equals("to"))
            ThrowError(currToken, "to");
        
        currToken = tokensQueue.remove();
        
        boolean isEndNegative = false;
        if(currToken.getText().equals("-")) {
            isEndNegative = true;
            currToken = tokensQueue.remove();
        }
        
        int endValue = Integer.MAX_VALUE;
        if(!CheckInt(currToken))
            ThrowError(currToken, "integer");
        else
            endValue = isEndNegative ? -1 * Integer.parseInt(currToken.getText()) : Integer.parseInt(currToken.getText());
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals("do"))
            ThrowError(currToken, "do");
        
        currToken = tokensQueue.remove();
        if(currToken.getText().equals("begin"))
            Parse(tokensQueue);
        else
            ThrowError(currToken, "begin");
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals("end"))
            ThrowError(currToken, "end");
        
        currToken = tokensQueue.remove();
        if(!currToken.getText().equals(";"))
            ThrowError(currToken, ";");
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
    
    static boolean CheckInt(Token token) {
        return token.getText().matches("\\-?\\d+");  //match a number with optional '-' and decimal.
    }
    
    static void write(Queue<Token> tokensQueue){
        Token currToken = tokensQueue.remove();

        if(currToken.getText().equals("(")){
            currToken = tokensQueue.remove();
           if(CheckInt(currToken) | currToken.getText().equals("'") | currToken.getText().equals(" \" ")){
               currToken = tokensQueue.remove();
               
               boolean flag=true;
               while(flag){
                        
                    if(currToken.getText().equals(")")){ //end of write
                        currToken = tokensQueue.remove();
                        flag=false; //stop na sis
                    }
                }
            }
        }
    }
    
    static void writeln(Queue<Token> tokensQueue){
        Token currToken = tokensQueue.remove();

        if(currToken.getText().equals("(")){
            currToken = tokensQueue.remove();
           if(CheckInt(currToken) | currToken.getText().equals("'") | currToken.getText().equals(" \" ")){
               currToken = tokensQueue.remove();
               
               boolean flag=true;
               while(flag){
                        
                    if(currToken.getText().equals(")")){ //end of write
                        currToken = tokensQueue.remove();
                        flag=false; //stop na sis
                    }
                }
            }
        }
        System.out.println(); 
    }
    

}
