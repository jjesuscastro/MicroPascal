program cOwOmpiler2;

{This is used to test comments and writeln. Mess up the comments to trigger errors.}

begin
    writeln('Hello world!');
    {This is a single line comment, amirite?}
    
    (* This is
        supposedly
        a multiline
        comment
        and I hope it
        is working *)
        
    {This is another single line comment, mess this up}
    writeln('This is a comment test!');
end.