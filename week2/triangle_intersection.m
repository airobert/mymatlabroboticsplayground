function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************

max_x_1 = max(P1(:,1));
min_x_1 = min(P1(:,1));

max_y_1 = max(P1(:,2));
min_y_1 = min(P1(:,2));

max_x_2 = max(P2(:,1));
min_x_2 = min(P2(:,1));

max_y_2 = max(P2(:,2));
min_y_2 = min(P2(:,2));

flag = true;

if (min_x_1 > max_x_2 || min_x_2 > max_x_1 || min_y_1 > max_y_2 || min_y_2 > max_y_1 )
    flag = false;
else
    %they may have intersections
    
    for A = P1'
        for B = P1'
            for C = P1'
                if (~(isequal(A, B) || isequal(A, C) || isequal(C, B)))
                    m = (A(2) - B(2)) / (A(1) - B(1));
                    b = A(2) - m * A(1);
                    
                    A_ = P2(1,:);
                    B_ = P2(2,:);
                    C_ = P2(3,:);
                    
                    if ((m*A_(1) - A_(2) + b > 0)  && (m*B_(1) - B_(2) + b > 0) && (m*C_(1) - C_(2) + b > 0) && (m*C(1) - C(2) + b < 0))
                        flag = false;
                    end
                end
            end
        end
    end
    
    for A = P2'
        for B = P2'
            for C = P2'
                if (~(isequal(A, B) || isequal(A, C) || isequal(C, B)))
                    m = (A(2) - B(2)) / (A(1) - B(1));
                    b = A(2) - m * A(1);
                    
                    A_ = P1(1,:);
                    B_ = P1(2,:);
                    C_ = P1(3,:);
                    
                    if ((m*A_(1) - A_(2) + b > 0)  && (m*B_(1) - B_(2) + b > 0) && (m*C_(1) - C_(2) + b > 0) && (m*C(1) - C(2) + b < 0))
                        flag = false;
                    end
                end
            end
        end
    end
          
end
% *******************************************************************
end

