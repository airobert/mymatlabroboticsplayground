function flag =  two_sides (V1, V2, V3, Va, Vb, Vc)

flag = false;


% find the m,b of y = m x + b
m = (V2(2) - V1(2)) / (V2(1) - V1(1));
b = V1(2) - ((V2(2) - V1(2))/(V2(1) - V1(1)) * V1(1));

if (((m * Va(1) - Va(2) + b) > 0 && (m * Vb(1) - Vb(2) + b) > 0 && (m * Vc(1) - Vc(2) + b) > 0 && (m * V3(1) - V3(2) + b) < 0) || ((m * Va(1) - Va(2) + b) < 0 && (m * Vb(1) - Vb(2) + b) < 0 && (m * Vc(1) - Vc(2) + b) < 0) && (m * V3(1) - V3(2) + b) > 0) 
    flag = true;
else 
    m = (V3(2) - V1(2)) / (V3(1) - V1(1));
    b = V1(2) - ((V3(2) - V1(2))/(V3(1) - V1(1)) * V1(1));
    % test if one is in the other
    if  (((m * Va(1) - Va(2) + b) > 0 && (m * Vb(1) - Vb(2) + b) > 0 && (m * Vc(1) - Vc(2) + b) > 0 && (m * V2(1) - V2(2) + b) < 0) || ((m * Va(1) - Va(2) + b) < 0 && (m * Vb(1) - Vb(2) + b) < 0 && (m * Vc(1) - Vc(2) + b) < 0) && (m * V2(1) - V2(2) + b) > 0) 
        flag = true;
        
    else 
        m = (V3(2) - V2(2)) / (V3(1) - V2(1));
        b = V2(2) - ((V3(2) - V2(2))/(V3(1) - V2(1)) * V2(1));
        
        if  (((m * Va(1) - Va(2) + b) > 0 && (m * Vb(1) - Vb(2) + b) > 0 && (m * Vc(1) - Vc(2) + b) > 0 && (m * V1(1) - V1(2) + b) < 0) || ((m * Va(1) - Va(2) + b) < 0 && (m * Vb(1) - Vb(2) + b) < 0 && (m * Vc(1) - Vc(2) + b) < 0) && (m * V1(1) - V1(2) + b) > 0) 
        flag = true;
        end 
    end
end

end

