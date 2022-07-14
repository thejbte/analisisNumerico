function [k1y, k2y, k3y, k4y, k1z, k2z, k3z, k4z, phiy, phiz] = rk4(x, y, z, h)
     k1y = dy_dx_1(x,y,z);
     k1z = dz_dx_1(x,y,z);
     
     k2y = dy_dx_1(x+h/2, y+k1y*h/2, z +k1z*h/2);
     k2z = dz_dx_1(x+h/2, y+k1y*h/2, z +k1z*h/2);
     
     k3y = dy_dx_1(x+h/2, y+k2y*h/2, z +k2z*h/2);
     k3z = dz_dx_1(x+h/2, y+k2y*h/2, z +k2z*h/2);
  
     k4y = dy_dx_1(x+h, y+k3y*h, z +k3z*h);
     k4z = dz_dx_1(x+h, y+k3y*h, z +k3z*h);
     phiy = phi_gen(k1y,k2y,k3y,k4y)
     phiy = phi_gen(k1z,k2z,k3z,k4z)
end

% EDO 1
function  ret = dy_dx_1(x,y,z)
  ret = z;
end

%EDO 2
function  ret = dz_dx_1(x,y,z)
  ret = -0.6*(z) - 8*(y);
end

function ret = phi_gen(k1, k2, k3, k4)
  ret = (k1 +2*k2+2*k3 + k4)/6;
end


