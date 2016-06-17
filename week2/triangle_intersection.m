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

if (min_x_1 > max_x_2 || min_x_2 > max_x_1 || min_y_1 > max_y_2 || min_y_2 > max_y_1 )
    flag = false;
else
    %they may have intersections
    
    %
    a = two_sides (P1(1,:), P1(2,:), P1(3,:), P2(1,:), P2(2,:), P2(3,:));
    b = two_sides (P1(3,:), P1(2,:), P1(3,:), P2(1,:), P2(2,:), P2(3,:));
    
    if (a || b)
        flag = false;  % if one of the edge of one of the 
    else
        flag = true;
    end
          
end
% *******************************************************************
end

