/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package micropascal;

import grammar.pascal.pascalLexer;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;

/**
 *
 * @author jjoes
 */
public class MicroPascal {
    public static void main(String[] args) {
        List tokens = Tokenize(args[0]);
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
}
