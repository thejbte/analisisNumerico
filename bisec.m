function ret  = bisec(a , b, iter )
  %mnOld = 0;
  output = zeros(1,4);
  
  for i = 0:iter

    mn = (a +b)/2;
    fa = func_h(a);
    fmn = func_h(mn);
    output(i+1,:) = [ i a b mn];
    if(fa*fmn < 0)
      a = a ;%
      b = mn;
    else 
      a = mn;
      b = b; %
    endif
  
    
   % mnOld =mn;
  endfor
    names = {'i', 'a', 'b','mn'};
    fprintf(1, "%s %s %s %s \n" ,names{:});
    fprintf(1, "%d %f %f %f \n" ,output');
  
endfunction

function ret = func_h( h)
  ret =  pi*h^3 -9*pi*h^2 +90; 
endfunction